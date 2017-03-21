;;;
;;; Customize Emacs Custom mechanism
;;;

(file-name-directory "/bla/yo/ey.el")

(setq custom-file (concat (file-name-directory load-file-name) "AUTO-custom.el"))
(load custom-file)
