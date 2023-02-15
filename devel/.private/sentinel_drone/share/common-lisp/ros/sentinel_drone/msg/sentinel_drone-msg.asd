
(cl:in-package :asdf)

(defsystem "sentinel_drone-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Geolocation" :depends-on ("_package_Geolocation"))
    (:file "_package_Geolocation" :depends-on ("_package"))
  ))