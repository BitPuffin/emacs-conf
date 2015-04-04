;;;
;;; Configuration of racket-mode
;;;

(if (eq system-type 'darwin)
    (progn
      (setq racket-racket-program "~/Applications/Racket v6.1.1/bin/racket")
      (setq racket-raco-program "~/Applications/Racket v6.1.1/bin/raco"))
  (progn
    nil))

(add-hook 'racket-mode-hook #'enable-paredit-mode)


