/*
 *  Author: Xue Ye Lin <xue.ye.lin@vanderbilt.edu>
 */

#include <string>
#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <swiftpro/SwiftproState.h>
#include <swiftpro/status.h>
#include <swiftpro/position.h>
#include <swiftpro/angle4th.h>
#include <swiftpro/gcode.h>

serial::Serial _serial; // serial object
swiftpro::SwiftproState pos;

/* 
 * Description: callback when receive data from gcode_write_topic
 * Inputs: 		msg(string)			G-code to be execute by swift pro
 * Outputs:		Gcode				send gcode to control swift pro
 */
void gcode_write_callback(swiftpro::gcode msg)
{
    std::string Gcode = msg.gcode;
	std_msgs::String result;

	ROS_INFO("%s", Gcode.c_str());
    ROS_INFO("call back in action");

	_serial.write(Gcode.c_str());
	result.data = _serial.read(_serial.available());
}


/* 
 * Node name:
 *	 swiftpro_write_gcode_node
 *
 * Topic publish: (rate = 20Hz, queue size = 1)
 *   position_read_topic
 */
int main(int argc, char **argv)
{
    ros::init(argc, argv, "swiftpro_write_node");
    ros::NodeHandle nh;
    swiftpro::SwiftproState swiftpro_state;

	ros::Subscriber sub1 = nh.subscribe("gcode_write_topic", 1, gcode_write_callback);

    ros::Publisher pub = nh.advertise<swiftpro::SwiftproState>("SwiftproState_topic", 1);
    ros::Rate loop_rate(20);


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
        ros::Duration(3.5).sleep();    // wait 3.5s
        _serial.write("M2120 V0\r\n"); // stop report position
        ros::Duration(0.1).sleep();    // wait 0.1s
        _serial.write("M17\r\n");      // attach
        ros::Duration(0.1).sleep();    // wait 0.1s
        ROS_INFO_STREAM("Attach and wait for commands");
    }


    while (ros::ok())
    {
        pub.publish(pos);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}