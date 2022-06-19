; Auto-generated. Do not edit!


(cl:in-package chessbot-srv)


;//! \htmlinclude ChessImage-request.msg.html

(cl:defclass <ChessImage-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChessImage-request (<ChessImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChessImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChessImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chessbot-srv:<ChessImage-request> is deprecated: use chessbot-srv:ChessImage-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChessImage-request>) ostream)
  "Serializes a message object of type '<ChessImage-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChessImage-request>) istream)
  "Deserializes a message object of type '<ChessImage-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChessImage-request>)))
  "Returns string type for a service object of type '<ChessImage-request>"
  "chessbot/ChessImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChessImage-request)))
  "Returns string type for a service object of type 'ChessImage-request"
  "chessbot/ChessImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChessImage-request>)))
  "Returns md5sum for a message object of type '<ChessImage-request>"
  "0f2a2d0ca79f98f8355432897b5e5ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChessImage-request)))
  "Returns md5sum for a message object of type 'ChessImage-request"
  "0f2a2d0ca79f98f8355432897b5e5ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChessImage-request>)))
  "Returns full string definition for message of type '<ChessImage-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChessImage-request)))
  "Returns full string definition for message of type 'ChessImage-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChessImage-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChessImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChessImage-request
))
;//! \htmlinclude ChessImage-response.msg.html

(cl:defclass <ChessImage-response> (roslisp-msg-protocol:ros-message)
  ((immsg
    :reader immsg
    :initarg :immsg
    :type cl:string
    :initform ""))
)

(cl:defclass ChessImage-response (<ChessImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChessImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChessImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chessbot-srv:<ChessImage-response> is deprecated: use chessbot-srv:ChessImage-response instead.")))

(cl:ensure-generic-function 'immsg-val :lambda-list '(m))
(cl:defmethod immsg-val ((m <ChessImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chessbot-srv:immsg-val is deprecated.  Use chessbot-srv:immsg instead.")
  (immsg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChessImage-response>) ostream)
  "Serializes a message object of type '<ChessImage-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'immsg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'immsg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChessImage-response>) istream)
  "Deserializes a message object of type '<ChessImage-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'immsg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'immsg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChessImage-response>)))
  "Returns string type for a service object of type '<ChessImage-response>"
  "chessbot/ChessImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChessImage-response)))
  "Returns string type for a service object of type 'ChessImage-response"
  "chessbot/ChessImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChessImage-response>)))
  "Returns md5sum for a message object of type '<ChessImage-response>"
  "0f2a2d0ca79f98f8355432897b5e5ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChessImage-response)))
  "Returns md5sum for a message object of type 'ChessImage-response"
  "0f2a2d0ca79f98f8355432897b5e5ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChessImage-response>)))
  "Returns full string definition for message of type '<ChessImage-response>"
  (cl:format cl:nil "string immsg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChessImage-response)))
  "Returns full string definition for message of type 'ChessImage-response"
  (cl:format cl:nil "string immsg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChessImage-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'immsg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChessImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChessImage-response
    (cl:cons ':immsg (immsg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChessImage)))
  'ChessImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChessImage)))
  'ChessImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChessImage)))
  "Returns string type for a service object of type '<ChessImage>"
  "chessbot/ChessImage")