;;;
;;; Hide the mode line when I don't care
;;;

;; See http://bzg.fr/emacs-hide-mode-line.html
(defvar-local hidden-mode-line-mode nil)
(defvar-local hide-mode-line nil)

(define-minor-mode hidden-mode-line-mode
	"Minor mode to hide the mode-line in the current buffer."
	:init-value nil
	:global nil
	:variable hidden-mode-line-mode
	:group 'editing-basics
	(if hidden-mode-line-mode
		(setq hide-mode-line mode-line-format
		      mode-line-format nil)
		(setq mode-line-format hide-mode-line
		      hide-mode-line nil))
	(force-mode-line-update)
	;; Apparently force-mode-line-update is not always enough to
	;; redisplay the mode-line
	(redraw-display)
	(when (and (called-interactively-p 'interactive)
	           hidden-mode-line-mode)
		(run-with-idle-timer
		 0 nil 'message
		 (concat "Hidden Mode Line Mode enabled.	"
		         "Use M-x hidden-mode-line-mode to make the mode-line appear."))))

;; Activate hidden-mode-line-mode
(hidden-mode-line-mode t)

;; Alternatively, you can paint your mode-line in White but then
;; you'll have to manually paint it in black again
;; (custom-set-faces
;;	'(mode-line-highlight ((t nil)))
;;	'(mode-line ((t (:foreground "white" :background "white"))))
;;	'(mode-line-inactive ((t (:background "white" :foreground "white")))))

(defvar-local header-line-format nil)
(defun mode-line-in-header ()
	(interactive)
	(if (not header-line-format)
		(setq header-line-format mode-line-format
		      mode-line-format nil)
		(setq mode-line-format header-line-format
		      header-line-format nil))
	(set-window-buffer nil (current-buffer)))
(global-set-key (kbd "C-M-SPC") 'mode-line-in-header)
;; End See http://bzg.fr/emacs-hide-mode-line.html

;(add-hook 'after-change-major-mode-hook 'hidden-mode-line-mode)
;(add-hook 'after-change-major-mode-hook 'mode-line-in-header)

(setq line-number-mode t)
(setq column-number-mode t)
