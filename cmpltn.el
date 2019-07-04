;;;
;;; Completion configuration
;;;

(autoload 'ido-at-point-mode "ido-at-point")


;(setq ido-enable-flex-matching t)
;(setq ido-everywhere t)
; (ido-mode t)


(ivy-mode 1)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h C-l") 'counsel-find-library)
(global-set-key (kbd "C-h S") 'counsel-info-lookup-symbol)
(global-set-key (kbd "C-h u") 'counsel-unicode-char)
(global-set-key (kbd "C-h b") 'counsel-descbinds)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "<f1>") 'counsel-M-x)


(ido-at-point-mode)
