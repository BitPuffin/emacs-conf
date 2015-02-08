;;;
;;; Configure slime
;;;

(require 'slime-autoloads)

(setq slime-contribs '(slime-fancy))
(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
