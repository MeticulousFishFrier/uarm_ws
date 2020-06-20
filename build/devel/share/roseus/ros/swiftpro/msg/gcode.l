;; Auto-generated. Do not edit!


(when (boundp 'swiftpro::gcode)
  (if (not (find-package "SWIFTPRO"))
    (make-package "SWIFTPRO"))
  (shadow 'gcode (find-package "SWIFTPRO")))
(unless (find-package "SWIFTPRO::GCODE")
  (make-package "SWIFTPRO::GCODE"))

(in-package "ROS")
;;//! \htmlinclude gcode.msg.html


(defclass swiftpro::gcode
  :super ros::object
  :slots (_gcode ))

(defmethod swiftpro::gcode
  (:init
   (&key
    ((:gcode __gcode) "")
    )
   (send-super :init)
   (setq _gcode (string __gcode))
   self)
  (:gcode
   (&optional __gcode)
   (if __gcode (setq _gcode __gcode)) _gcode)
  (:serialization-length
   ()
   (+
    ;; string _gcode
    4 (length _gcode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gcode
       (write-long (length _gcode) s) (princ _gcode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gcode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gcode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get swiftpro::gcode :md5sum-) "0a46afe04400af260ebb86395c467524")
(setf (get swiftpro::gcode :datatype-) "swiftpro/gcode")
(setf (get swiftpro::gcode :definition-)
      "string gcode
")



(provide :swiftpro/gcode "0a46afe04400af260ebb86395c467524")


