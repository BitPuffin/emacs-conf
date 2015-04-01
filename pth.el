;;;
;;; Set up paths
;;;

(add-to-list 'load-path "~/.emacs-plugins")
(if (eq system-type 'windows-nt)
    ;; When setting up a new machine `subst` u to the cygwin root
    (progn
      (add-to-list 'exec-path "u:/bin")
      (setenv "PATH" (concat "u:/bin;" (getenv "PATH")))))
