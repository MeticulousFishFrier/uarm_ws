/*
 *  Author: Xue Ye Lin <xue.ye.lin@vanderbilt.edu>
 */

#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/Empty.h>
#include <std_msgs/String.h>
#include <swiftpro/SwiftproState.h>
#include <swiftpro/angle4th.h>
#include <swiftpro/gcode.h>
#include <swiftpro/position.h>
#include <swiftpro/status.h>
#include <string>

#include <fstream>
#include <iostream>
#include <string>

const std::string GCODE_FILE_PATH = "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/"
                                    "example_Gcode/test1.gcode";

serial::Serial _serial;  // serial object
swiftpro::SwiftproState arm_state;

/*
 * Description: callback when receive data from gcode_write_topic Inputs:
 * msg(string)         G-code to be execute by swift pro Outputs:     Gcode
 * send gcode to control swift pro
 */
void gcode_write_callback(swiftpro::gcode msg)
{
  std::string Gcode = msg.gcode;
  std_msgs::String result;

  _serial.write(Gcode.c_str());
  // result.data = _serial.read(_serial.available());
  ROS_INFO("serial wrote %s", result.data.c_str());
}

void write_gcode_ln(std::ifstream &gcode_file)
{
  std::string gcode_str;
  if (std::getline(gcode_file, gcode_str))
  {
    // skips over comments
    while ((gcode_str[0] == ';' || gcode_str.empty()) && !gcode_file.eof())
    {
      std::getline(gcode_file, gcode_str);
      ROS_INFO(" in write gcode");
    }
    // converts from std::string gcode into swiftpro::gcode message
    // the addition of "\r\n" is carraige return and newline to trigger
    // a command in the Marlin firmware
    gcode_str += "\r\n";
    _serial.write(gcode_str.c_str());
    ros::Duration(0.1).sleep();  // wait 0.1s for the serial data to pass

    ROS_INFO("fufuaufuufa");
    ROS_INFO("%s", gcode_str.c_str());
  }
}

/*
 * Node name: swiftpro_write_gcode_node
 *
 * Topic publish: (rate = 20Hz, queue size = 4) position_read_topic
 */
int main(int argc, char **argv)
{
  // initialize ros
  ros::init(argc, argv, "swiftpro_write_gcode_node");
  ros::NodeHandle nh;
  swiftpro::SwiftproState swiftpro_state;

  // initialize serial communication with uarm swift pro
  try
  {
    _serial.setPort("/dev/ttyACM0");
    _serial.setBaudrate(115200);
    serial::Timeout to = serial::Timeout::simpleTimeout(1000);
    _serial.setTimeout(to);
    _serial.open();
    ROS_INFO_STREAM("Port has been open successfully");
  }
  catch (serial::IOException &e)
  {
    ROS_ERROR_STREAM("Unable to open port");
    return -1;
  }

  if (_serial.isOpen())
  {
    ros::Duration(3.5).sleep();     // wait 3.5s
    _serial.write("M2120 V0\r\n");  // stop report position
    ros::Duration(0.1).sleep();     // wait 0.1s
    _serial.write("M17\r\n");       // attach
    ros::Duration(0.1).sleep();     // wait 0.1s
    ROS_INFO_STREAM("Attach and wait for commands");
  }

  // open gcode file to be read
  std::ifstream gcode_file(GCODE_FILE_PATH);
  std::string gcode_str;

  // ros::Subscriber sub1 = nh.subscribe("gcode_write_topic", 4, gcode_write_callback);
  std_msgs::String result;

  ros::Publisher pub = nh.advertise<swiftpro::SwiftproState>("SwiftproState_topic", 1);
  ros::Rate loop_rate(20);

  write_gcode_ln(gcode_file);

  while (ros::ok())
  {
    if (_serial.available())
    {
      result.data = _serial.read(_serial.available());
      ROS_INFO("%s", result.data.c_str());

      // only send data if previous command has been completed
      // this is how octoprint does it, might need to put some
      // more into buffers
      if (strcmp(result.data.c_str(), "ok"))
      {
        ROS_INFO("writing gcode again");

        write_gcode_ln(gcode_file);
        pub.publish(arm_state);
      }
    }
    ROS_INFO(" OUT");

    ros::spinOnce();
    loop_rate.sleep();
  }

  gcode_file.close();

  return 0;
}