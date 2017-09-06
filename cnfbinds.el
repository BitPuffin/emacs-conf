;;;
;;; Miscellaneous global keyboard bindings
;;; Rebinds standard bindings, other modes
;;; are configured in their respectives files
;;;

(let ((items '(("C-x C-h" eval-buffer)
							 ("C-x C-c" compile)
							 ("<S-tab>" tab-to-tab-stop))))
 (mapc (lambda (x)
				 (global-set-key (kbd (car x)) (cadr x)))
			 items))
