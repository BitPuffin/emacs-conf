;;;
;;; Set options for scheme mode
;;;

(add-hook 'scheme-mode-hook
					(lambda ()
						(setq-local indent-tabs-mode nil)))
