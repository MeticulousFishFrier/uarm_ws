; Auto-generated. Do not edit!


(cl:in-package swiftpro-msg)


;//! \htmlinclude gcode.msg.html

(cl:defclass <gcode> (roslisp-msg-protocol:ros-message)
  ((gcode
    :reader gcode
    :initarg :gcode
    :type cl:string
    :initform ""))
)

(cl:defclass gcode (<gcode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gcode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gcode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swiftpro-msg:<gcode> is deprecated: use swiftpro-msg:gcode instead.")))

(cl:ensure-generic-function 'gcode-val :lambda-list '(m))
(cl:defmethod gcode-val ((m <gcode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftpro-msg:gcode-val is deprecated.  Use swiftpro-msg:gcode instead.")
  (gcode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gcode>) ostream)
  "Serializes a message object of type '<gcode>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gcode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gcode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gcode>) istream)
  "Deserializes a message object of type '<gcode>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gcode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gcode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gcode>)))
  "Returns string type for a message object of type '<gcode>"
  "swiftpro/gcode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gcode)))
  "Returns string type for a message object of type 'gcode"
  "swiftpro/gcode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gcode>)))
  "Returns md5sum for a message object of type '<gcode>"
  "0a46afe04400af260ebb86395c467524")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gcode)))
  "Returns md5sum for a message object of type 'gcode"
  "0a46afe04400af260ebb86395c467524")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gcode>)))
  "Returns full string definition for message of type '<gcode>"
  (cl:format cl:nil "string gcode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gcode)))
  "Returns full string definition for message of type 'gcode"
  (cl:format cl:nil "string gcode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gcode>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gcode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gcode>))
  "Converts a ROS message object to a list"
  (cl:list 'gcode
    (cl:cons ':gcode (gcode msg))
))
