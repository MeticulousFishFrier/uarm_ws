#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/String.h>
#include <string>
#include <swiftpro/SwiftproState.h>
#include <swiftpro/gcode.h>
#include <iostream>
#include <fstream>

/* 
 * Node name:
 *	 swiftpro_read_gcode_node
 *
 * Topic publish: (rate = 20Hz, queue size = 3)
 *   gcode_write_topic
 */
int main(int argc, char** argv)
{	
    std::ifstream gcode_file("/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/example_Gcode/test1.gcode");
    std::string gcode_str;


	ros::init(argc, argv, "swiftpro_read_gcode_node");
	ros::NodeHandle nh;
	swiftpro::gcode gcode_msg;
	std_msgs::String result;

	ros::Publisher pub = nh.advertise<swiftpro::gcode>("gcode_write_topic", 1);
	ros::Rate loop_rate(20);

	while (ros::ok())
	{

        if(std::getline(gcode_file,gcode_str)){
            //converts from std::string gcode into swiftpro::gcode message 
            //the addition of "\r\n" is carraige return and newline to trigger
            //in the Marlin firmware
            gcode_str+="\r\n";
            gcode_msg.gcode = gcode_str;
            pub.publish(gcode_msg);
			ROS_INFO("%s",gcode_str.c_str());
        }

		ros::spinOnce();
		loop_rate.sleep();
	}

    gcode_file.close();
    return 0;
}
