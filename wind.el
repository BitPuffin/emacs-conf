;;;
;;; Use Windmove omg
;;;

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(global-set-key (kbd "<f9>")  'windmove-left)
(global-set-key (kbd "<f12>") 'windmove-right)
(global-set-key (kbd "<f10>")  'windmove-down)
(global-set-key (kbd "<f11>")    'windmove-up)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
