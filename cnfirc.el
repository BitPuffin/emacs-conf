;;;
;;; My irc configuration
;;;

(require 'circe)

(defvar my-irc-nick     "BitPuffin")
(defvar my-irc-username "BitPuffin")
(load "irccred")

(add-to-list 'circe-networks '("Afternet" :host "irc.afternet.org" :port (6667 . 6697)))
(add-to-list 'circe-networks '("Quakenet" :host "irc.quakenet.org" :port (6667 . 6697)))
(add-to-list 'circe-networks '("Esper"    :host "irc.esper.net"    :port (6667 . 6697)))
(add-to-list 'circe-networks '("Mozilla"  :host "irc.mozilla.org"  :port (6667 . 6697)))

(setq circe-network-options
      `(("Freenode"
         :nick ,my-irc-nick
         :channels ("#nim"
                    "#nim-offtopic"
                    "#Maratis"
                    "##OpenGL"
                    "#haiku"
                    "#crux"
                    "#kxstudio"
                    "#verse"
                    "#allegro"
                    "#lisp"
                    "#ocaml"
                    "#idris"
                    "#emacs"
                    "#yig"
                    "#d"
                    "#neo3d"
                    "#plan9"
                    "##dale"
                    "#higgsjs"
                    "#lua")
         :nickserv-password ,my-irc-password)
        ("Quakenet"
         :nick ,my-irc-nick
         :channels ("#londonindies")
         :nickserv-password ,my-irc-password)
        ("Esper"
         :nick ,my-irc-nick
         :channels ("#TIGirc")
         :nickserv-password ,my-irc-password)
        ("Afternet"
         :user ,my-irc-username
         :pass ,my-irc-password
         :nick ,my-irc-nick
         :channels ("#ludumdare" "#ludumbeer" "#ludumdare.se #ludumdota"))
        ("Mozilla"
         :nick ,my-irc-nick
         :channels ("#rust"))))
(defun start-irc ()
  "Connect to IRC"
  (interactive)
  (circe "Freenode")
  (circe "Quakenet")
  (circe "Esper")
  (circe "Afternet"))

(load "lui-logging" nil t)
(enable-lui-logging-globally)

(setq tracking-most-recent-first t)
