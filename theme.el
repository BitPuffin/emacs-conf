;;;
;;; Set theme
;;;

(load-theme 'doom-dracula t)


; Retina
(if (eq system-type 'darwin)
	(set-face-attribute 'default nil :font "DejaVu Sans Mono-18")
	(set-face-attribute 'default nil :font "DejaVu Sans Mono-10"))

