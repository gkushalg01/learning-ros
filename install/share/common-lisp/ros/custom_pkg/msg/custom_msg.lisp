; Auto-generated. Do not edit!


(cl:in-package custom_pkg-msg)


;//! \htmlinclude custom_msg.msg.html

(cl:defclass <custom_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (loc
    :reader loc
    :initarg :loc
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass custom_msg (<custom_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_pkg-msg:<custom_msg> is deprecated: use custom_pkg-msg:custom_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_pkg-msg:header-val is deprecated.  Use custom_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_pkg-msg:name-val is deprecated.  Use custom_pkg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_pkg-msg:num-val is deprecated.  Use custom_pkg-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'loc-val :lambda-list '(m))
(cl:defmethod loc-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_pkg-msg:loc-val is deprecated.  Use custom_pkg-msg:loc instead.")
  (loc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom_msg>) ostream)
  "Serializes a message object of type '<custom_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'loc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom_msg>) istream)
  "Deserializes a message object of type '<custom_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'loc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom_msg>)))
  "Returns string type for a message object of type '<custom_msg>"
  "custom_pkg/custom_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom_msg)))
  "Returns string type for a message object of type 'custom_msg"
  "custom_pkg/custom_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom_msg>)))
  "Returns md5sum for a message object of type '<custom_msg>"
  "4b289744901eeb6b737f55c78399b4ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom_msg)))
  "Returns md5sum for a message object of type 'custom_msg"
  "4b289744901eeb6b737f55c78399b4ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom_msg>)))
  "Returns full string definition for message of type '<custom_msg>"
  (cl:format cl:nil "Header header~%std_msgs/String name~%uint32 num~%geometry_msgs/Pose2D loc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom_msg)))
  "Returns full string definition for message of type 'custom_msg"
  (cl:format cl:nil "Header header~%std_msgs/String name~%uint32 num~%geometry_msgs/Pose2D loc~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'loc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'custom_msg
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':num (num msg))
    (cl:cons ':loc (loc msg))
))
