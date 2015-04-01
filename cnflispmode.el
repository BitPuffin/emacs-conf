;;;
;;; Set options for lisp mode
;;;

(add-hook 'lisp-mode-hook
					(lambda ()
						(setq-local indent-tabs-mode nil)))
