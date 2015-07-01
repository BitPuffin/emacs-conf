;;;
;;; Set up boo mode
;;;

;(require 'python)
;(require 'boo-mode)
																				;(add-to-list 'auto-mode-alist '("\\.boo\\'" . boo-mode))
(add-hook 'compilation-mode-hook (lambda ()
	(add-to-list 'compilation-error-regexp-alist 'boo)
	(add-to-list 'compilation-error-regexp-alist-alist
							 '(boo "\\([-\\/[:alnum:]#. ]+\\.boo\\)(\\([[:digit:]]+\\),\\([[:digit:]]+\\))" 1 2 3))))
