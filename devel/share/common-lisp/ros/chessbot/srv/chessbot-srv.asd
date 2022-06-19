
(cl:in-package :asdf)

(defsystem "chessbot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChessImage" :depends-on ("_package_ChessImage"))
    (:file "_package_ChessImage" :depends-on ("_package"))
  ))