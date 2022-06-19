;; Auto-generated. Do not edit!


(when (boundp 'chessbot::ChessImage)
  (if (not (find-package "CHESSBOT"))
    (make-package "CHESSBOT"))
  (shadow 'ChessImage (find-package "CHESSBOT")))
(unless (find-package "CHESSBOT::CHESSIMAGE")
  (make-package "CHESSBOT::CHESSIMAGE"))
(unless (find-package "CHESSBOT::CHESSIMAGEREQUEST")
  (make-package "CHESSBOT::CHESSIMAGEREQUEST"))
(unless (find-package "CHESSBOT::CHESSIMAGERESPONSE")
  (make-package "CHESSBOT::CHESSIMAGERESPONSE"))

(in-package "ROS")





(defclass chessbot::ChessImageRequest
  :super ros::object
  :slots ())

(defmethod chessbot::ChessImageRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass chessbot::ChessImageResponse
  :super ros::object
  :slots (_immsg ))

(defmethod chessbot::ChessImageResponse
  (:init
   (&key
    ((:immsg __immsg) "")
    )
   (send-super :init)
   (setq _immsg (string __immsg))
   self)
  (:immsg
   (&optional __immsg)
   (if __immsg (setq _immsg __immsg)) _immsg)
  (:serialization-length
   ()
   (+
    ;; string _immsg
    4 (length _immsg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _immsg
       (write-long (length _immsg) s) (princ _immsg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _immsg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _immsg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass chessbot::ChessImage
  :super ros::object
  :slots ())

(setf (get chessbot::ChessImage :md5sum-) "0f2a2d0ca79f98f8355432897b5e5ec2")
(setf (get chessbot::ChessImage :datatype-) "chessbot/ChessImage")
(setf (get chessbot::ChessImage :request) chessbot::ChessImageRequest)
(setf (get chessbot::ChessImage :response) chessbot::ChessImageResponse)

(defmethod chessbot::ChessImageRequest
  (:response () (instance chessbot::ChessImageResponse :init)))

(setf (get chessbot::ChessImageRequest :md5sum-) "0f2a2d0ca79f98f8355432897b5e5ec2")
(setf (get chessbot::ChessImageRequest :datatype-) "chessbot/ChessImageRequest")
(setf (get chessbot::ChessImageRequest :definition-)
      "---
string immsg

")

(setf (get chessbot::ChessImageResponse :md5sum-) "0f2a2d0ca79f98f8355432897b5e5ec2")
(setf (get chessbot::ChessImageResponse :datatype-) "chessbot/ChessImageResponse")
(setf (get chessbot::ChessImageResponse :definition-)
      "---
string immsg

")



(provide :chessbot/ChessImage "0f2a2d0ca79f98f8355432897b5e5ec2")


