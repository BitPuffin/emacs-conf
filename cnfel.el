;;;
;;; Configure Emacs Lisp
;;;

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (setq-local indent-tabs-mode nil)))
