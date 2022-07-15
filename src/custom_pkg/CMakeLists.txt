cmake_minimum_required(VERSION 3.0.2)
project(custom_pkg)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  message_generation
  roscpp
  std_msgs
)

add_message_files(
   FILES
   custom_msg.msg
)

generate_messages(
   DEPENDENCIES
   geometry_msgs   std_msgs
)

catkin_package(
#CATKIN_DEPENDS geometry_msgs message_generation roscpp std_msgs
)

include_directories(
   include
   ${catkin_INCLUDE_DIRS}
)

add_executable(publisher_node src/customPublisher.cpp)
add_dependencies(publisher_node ${publisher_node_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(publisher_node
   ${catkin_LIBRARIES}
)
add_executable(subscriber_node src/customSubscriber.cpp)
add_dependencies(subscriber_node ${publisher_node_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(subscriber_node
   ${catkin_LIBRARIES}
)