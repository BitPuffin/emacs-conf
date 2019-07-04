;;;
;;; Configure org-mode
;;;

(setq org-src-fontify-natively t)

(add-hook 'org-mode-hook (lambda ()
                           (setq-local indent-tabs-mode nil)))

