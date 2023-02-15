; Auto-generated. Do not edit!


(cl:in-package sentinel_drone-msg)


;//! \htmlinclude Geolocation.msg.html

(cl:defclass <Geolocation> (roslisp-msg-protocol:ros-message)
  ((objectid
    :reader objectid
    :initarg :objectid
    :type cl:string
    :initform "")
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (long
    :reader long
    :initarg :long
    :type cl:float
    :initform 0.0))
)

(cl:defclass Geolocation (<Geolocation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Geolocation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Geolocation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sentinel_drone-msg:<Geolocation> is deprecated: use sentinel_drone-msg:Geolocation instead.")))

(cl:ensure-generic-function 'objectid-val :lambda-list '(m))
(cl:defmethod objectid-val ((m <Geolocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sentinel_drone-msg:objectid-val is deprecated.  Use sentinel_drone-msg:objectid instead.")
  (objectid m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <Geolocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sentinel_drone-msg:lat-val is deprecated.  Use sentinel_drone-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'long-val :lambda-list '(m))
(cl:defmethod long-val ((m <Geolocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sentinel_drone-msg:long-val is deprecated.  Use sentinel_drone-msg:long instead.")
  (long m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Geolocation>) ostream)
  "Serializes a message object of type '<Geolocation>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objectid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objectid))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Geolocation>) istream)
  "Deserializes a message object of type '<Geolocation>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'objectid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Geolocation>)))
  "Returns string type for a message object of type '<Geolocation>"
  "sentinel_drone/Geolocation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Geolocation)))
  "Returns string type for a message object of type 'Geolocation"
  "sentinel_drone/Geolocation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Geolocation>)))
  "Returns md5sum for a message object of type '<Geolocation>"
  "e34099979df01fb50f0f5a329758ba04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Geolocation)))
  "Returns md5sum for a message object of type 'Geolocation"
  "e34099979df01fb50f0f5a329758ba04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Geolocation>)))
  "Returns full string definition for message of type '<Geolocation>"
  (cl:format cl:nil "string objectid~%float32 lat~%float32 long~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Geolocation)))
  "Returns full string definition for message of type 'Geolocation"
  (cl:format cl:nil "string objectid~%float32 lat~%float32 long~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Geolocation>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'objectid))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Geolocation>))
  "Converts a ROS message object to a list"
  (cl:list 'Geolocation
    (cl:cons ':objectid (objectid msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':long (long msg))
))
