;;;
;;; Completion configuration
;;;

(autoload 'ido-at-point-mode "ido-at-point")


(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)
(global-set-key (kbd "M-x") 'smex)

(ido-at-point-mode)
