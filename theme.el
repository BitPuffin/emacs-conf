;;;
;;; Set theme
;;;

(load-theme 'wombat t)

; Retina
(if (eq system-type 'darwin)
	(set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
	(set-face-attribute 'default nil :font "DejaVu Sans Mono-10"))

