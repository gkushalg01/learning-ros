#include "ros/ros.h"
#include "custom_pkg/custom_msg.h"

#include <sstream>


int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "talker");

  
  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<custom_pkg::custom_msg>("chatter", 1000);

  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
   
    custom_pkg::custom_msg msg;
    
    std::stringstream ss;
    ss << "Robot " << count;
    msg.name.data = ss.str();
    
    msg.num = count;
    
    msg.loc.x = 10000 + count;
    msg.loc.y = 10000 - count;
    msg.loc.theta = 45;

    ROS_INFO("Publishing data for Robot %s :\n", msg.name.data.c_str());
    ROS_INFO("Number : %d", msg.num);
    ROS_INFO("Location : x = %.2f , y = %.2f, theta = %.2f :\n", msg.loc.x, msg.loc.y, msg.loc.theta);

    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }
  return 0;
}
