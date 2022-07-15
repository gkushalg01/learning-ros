#include "ros/ros.h"
#include "custom_pkg/custom_msg.h"

void chatterCallback(const custom_pkg::custom_msg::ConstPtr& msg)
{
  ROS_INFO("I heard: ");
    ROS_INFO("Published data for Robot %s :", msg->name.data.c_str());
    ROS_INFO("Has Number : %d", msg->num);
    ROS_INFO("And its at Location : x = %.2f , y = %.2f, theta = %.2f :\n", msg->loc.x, msg->loc.y, msg->loc.theta);

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

  ros::spin();

  return 0;
}
