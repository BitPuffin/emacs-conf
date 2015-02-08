;;;
;;; Set up package repositories
;;;

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)
