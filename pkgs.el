;;;
;;; Set up package repositories
;;;

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)


(unless (seq-every-p #'package-installed-p
                       package-selected-packages)
    (package-refresh-contents)
    (package-install-selected-packages))
