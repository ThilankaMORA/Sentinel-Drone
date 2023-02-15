;; Auto-generated. Do not edit!


(when (boundp 'sentinel_drone::Geolocation)
  (if (not (find-package "SENTINEL_DRONE"))
    (make-package "SENTINEL_DRONE"))
  (shadow 'Geolocation (find-package "SENTINEL_DRONE")))
(unless (find-package "SENTINEL_DRONE::GEOLOCATION")
  (make-package "SENTINEL_DRONE::GEOLOCATION"))

(in-package "ROS")
;;//! \htmlinclude Geolocation.msg.html


(defclass sentinel_drone::Geolocation
  :super ros::object
  :slots (_objectid _lat _long ))

(defmethod sentinel_drone::Geolocation
  (:init
   (&key
    ((:objectid __objectid) "")
    ((:lat __lat) 0.0)
    ((:long __long) 0.0)
    )
   (send-super :init)
   (setq _objectid (string __objectid))
   (setq _lat (float __lat))
   (setq _long (float __long))
   self)
  (:objectid
   (&optional __objectid)
   (if __objectid (setq _objectid __objectid)) _objectid)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:long
   (&optional __long)
   (if __long (setq _long __long)) _long)
  (:serialization-length
   ()
   (+
    ;; string _objectid
    4 (length _objectid)
    ;; float32 _lat
    4
    ;; float32 _long
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _objectid
       (write-long (length _objectid) s) (princ _objectid s)
     ;; float32 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _long
       (sys::poke _long (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _objectid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _objectid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _lat
     (setq _lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _long
     (setq _long (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sentinel_drone::Geolocation :md5sum-) "e34099979df01fb50f0f5a329758ba04")
(setf (get sentinel_drone::Geolocation :datatype-) "sentinel_drone/Geolocation")
(setf (get sentinel_drone::Geolocation :definition-)
      "string objectid
float32 lat
float32 long

")



(provide :sentinel_drone/Geolocation "e34099979df01fb50f0f5a329758ba04")


