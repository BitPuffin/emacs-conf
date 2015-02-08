;;;
;;; My rcirc configuration
;;;

(eval-after-load 'rcirc
	'(defun-rcirc-command reconnect (arg)
		 "Reconnect the server process."
		 (interactive "i")
		 (unless process
			 (error "There's no process for this target"))
		 (let* ((server (car (process-contact process)))
						(port (process-contact process :service))
						(nick (rcirc-nick process))
						channels query-buffers)
			 (dolist (buf (buffer-list))
				 (with-current-buffer buf
					 (when (eq process (rcirc-buffer-process))
						 (remove-hook 'change-major-mode-hook
													'rcirc-change-major-mode-hook)
						 (if (rcirc-channel-p rcirc-target)
							 (setq channels (cons rcirc-target channels))
							 (setq query-buffers (cons buf query-buffers))))))
			 (delete-process process)
			 (rcirc-connect server port nick
			                rcirc-default-user-name
			 	              rcirc-default-full-name
			                channels))))

(require 'rcirc)

;; Not gonna show you my password scrub!
(load "irccred")
(setq rcirc-default-nick "BitPuffin")
(setq rcirc-default-user-name "BitPuffin")
(setq rcirc-default-full-name "Isak Andersson")
(setq rcirc-authinfo
      '(("freenode" nickserv rcirc-default-user-name my-rcirc-password)
        ("quakenet" nickserv rcirc-default-user-name my-rcirc-password)
        ("esper"    nickserv rcirc-default-user-name my-rcirc-password)
        ("mozilla"  nickserv rcirc-default-user-name my-rcirc-password)))

(add-hook 'rcirc-mode-hook
	(lambda ()
		(set (make-local-variable 'scroll-conservatively)
		 8192)))
(setq rcirc-log-flag t)
(rcirc-track-minor-mode t)
(setq rcirc-server-alist
      '(("irc.freenode.net" :channels ("#nim"
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
                                       "#plan9"))
        ("irc.quakenet.org" :channels ("#londonindies"))
        ("irc.mozilla.org"  :channels ("#rust"))
        ("irc.esper.net"    :channels ("#TIGirc"))
        ("irc.afternet.org" :channels ("#ludumdare"
                                       "#ludumbeer"
                                       "#ludumdare.se"))))
