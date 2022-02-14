;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::AddTwoInts)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'AddTwoInts (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ADDTWOINTS")
  (make-package "BEGINNER_TUTORIALS::ADDTWOINTS"))
(unless (find-package "BEGINNER_TUTORIALS::ADDTWOINTSREQUEST")
  (make-package "BEGINNER_TUTORIALS::ADDTWOINTSREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::ADDTWOINTSRESPONSE")
  (make-package "BEGINNER_TUTORIALS::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::AddTwoIntsRequest
  :super ros::object
  :slots (_emotion _sensor_id ))

(defmethod beginner_tutorials::AddTwoIntsRequest
  (:init
   (&key
    ((:emotion __emotion) "")
    ((:sensor_id __sensor_id) "")
    )
   (send-super :init)
   (setq _emotion (string __emotion))
   (setq _sensor_id (string __sensor_id))
   self)
  (:emotion
   (&optional __emotion)
   (if __emotion (setq _emotion __emotion)) _emotion)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:serialization-length
   ()
   (+
    ;; string _emotion
    4 (length _emotion)
    ;; string _sensor_id
    4 (length _sensor_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _emotion
       (write-long (length _emotion) s) (princ _emotion s)
     ;; string _sensor_id
       (write-long (length _sensor_id) s) (princ _sensor_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _emotion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emotion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sensor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::AddTwoIntsResponse
  :super ros::object
  :slots (_resp ))

(defmethod beginner_tutorials::AddTwoIntsResponse
  (:init
   (&key
    ((:resp __resp) "")
    )
   (send-super :init)
   (setq _resp (string __resp))
   self)
  (:resp
   (&optional __resp)
   (if __resp (setq _resp __resp)) _resp)
  (:serialization-length
   ()
   (+
    ;; string _resp
    4 (length _resp)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _resp
       (write-long (length _resp) s) (princ _resp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _resp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _resp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::AddTwoInts
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::AddTwoInts :md5sum-) "7c82105cb5cdc3d55e658c0fea7184bb")
(setf (get beginner_tutorials::AddTwoInts :datatype-) "beginner_tutorials/AddTwoInts")
(setf (get beginner_tutorials::AddTwoInts :request) beginner_tutorials::AddTwoIntsRequest)
(setf (get beginner_tutorials::AddTwoInts :response) beginner_tutorials::AddTwoIntsResponse)

(defmethod beginner_tutorials::AddTwoIntsRequest
  (:response () (instance beginner_tutorials::AddTwoIntsResponse :init)))

(setf (get beginner_tutorials::AddTwoIntsRequest :md5sum-) "7c82105cb5cdc3d55e658c0fea7184bb")
(setf (get beginner_tutorials::AddTwoIntsRequest :datatype-) "beginner_tutorials/AddTwoIntsRequest")
(setf (get beginner_tutorials::AddTwoIntsRequest :definition-)
      "string emotion
string sensor_id
---
string resp

")

(setf (get beginner_tutorials::AddTwoIntsResponse :md5sum-) "7c82105cb5cdc3d55e658c0fea7184bb")
(setf (get beginner_tutorials::AddTwoIntsResponse :datatype-) "beginner_tutorials/AddTwoIntsResponse")
(setf (get beginner_tutorials::AddTwoIntsResponse :definition-)
      "string emotion
string sensor_id
---
string resp

")



(provide :beginner_tutorials/AddTwoInts "7c82105cb5cdc3d55e658c0fea7184bb")


