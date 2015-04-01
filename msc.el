;;;
;;; Miscellaneous shit (ie not organized properly yet)
;;;

(semantic-mode t)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))
(if (eq system-type 'windows-nt)
    (add-to-list 'exec-path "C:\\"))

(setq-default buffer-file-coding-system 'utf-8-unix)
