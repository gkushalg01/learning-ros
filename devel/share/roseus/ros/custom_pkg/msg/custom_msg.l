;; Auto-generated. Do not edit!


(when (boundp 'custom_pkg::custom_msg)
  (if (not (find-package "CUSTOM_PKG"))
    (make-package "CUSTOM_PKG"))
  (shadow 'custom_msg (find-package "CUSTOM_PKG")))
(unless (find-package "CUSTOM_PKG::CUSTOM_MSG")
  (make-package "CUSTOM_PKG::CUSTOM_MSG"))

(in-package "ROS")
;;//! \htmlinclude custom_msg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_pkg::custom_msg
  :super ros::object
  :slots (_header _name _num _loc ))

(defmethod custom_pkg::custom_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (instance std_msgs::String :init))
    ((:num __num) 0)
    ((:loc __loc) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _num (round __num))
   (setq _loc __loc)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:loc
   (&rest __loc)
   (if (keywordp (car __loc))
       (send* _loc __loc)
     (progn
       (if __loc (setq _loc (car __loc)))
       _loc)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ;; uint32 _num
    4
    ;; geometry_msgs/Pose2D _loc
    (send _loc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;; uint32 _num
       (write-long _num s)
     ;; geometry_msgs/Pose2D _loc
       (send _loc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;; uint32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _loc
     (send _loc :deserialize buf ptr-) (incf ptr- (send _loc :serialization-length))
   ;;
   self)
  )

(setf (get custom_pkg::custom_msg :md5sum-) "4b289744901eeb6b737f55c78399b4ed")
(setf (get custom_pkg::custom_msg :datatype-) "custom_pkg/custom_msg")
(setf (get custom_pkg::custom_msg :definition-)
      "Header header
std_msgs/String name
uint32 num
geometry_msgs/Pose2D loc

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :custom_pkg/custom_msg "4b289744901eeb6b737f55c78399b4ed")


