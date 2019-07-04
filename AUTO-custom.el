(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote eww-browse-url))
 '(c++-mode-hook (quote (turn-on-pretty-mode)))
 '(c-mode-hook (quote (macrostep-c-mode-hook turn-on-pretty-mode)))
 '(completion-ignored-extensions
   (quote
    (".cm/" ".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo" ".dll" ".pdb" ".mdb" ".so" ".dylib")))
 '(confirm-kill-processes nil)
 '(counsel-find-file-ignore-regexp
   "\\(?:\\.\\(?:aux\\|b\\(?:bl\\|in\\|lg\\|zr/\\)\\|c\\(?:lass\\|m/\\|ps?\\)\\|d\\(?:64fsl\\|fsl\\|ll\\|x\\(?:\\(?:\\(?:32\\|64\\)fs\\)?l\\)\\|ylib\\)\\|elc\\|f\\(?:asl?\\|mt\\|ns?\\|\\(?:x\\(?:\\(?:32\\|64\\)f\\)\\)?sl\\)\\|g\\(?:it/\\|[lm]o\\)\\|hg/\\|idx\\|kys?\\|l\\(?:bin\\|ib\\|o[ft]\\|x\\(?:\\(?:32\\|64\\)fsl\\)\\|[ano]\\)\\|m\\(?:db\\|em\\|o\\)\\|p\\(?:64fsl\\|db\\|fsl\\|gs?\\|y[co]\\)\\|s\\(?:o\\|parcf\\|vn/\\|x\\(?:\\(?:32\\|64\\)fsl\\)\\)\\|t\\(?:fm\\|oc\\|ps?\\)\\|ufsl\\|vrs?\\|wx\\(?:\\(?:32\\|64\\)fsl\\)\\|x86f\\|[ao]\\)\\|CVS/\\|_\\(?:\\(?:MTN\\|darcs\\)/\\)\\|~\\)")
 '(cursor-type (quote box))
 '(custom-enabled-themes (quote (doom-dracula)))
 '(custom-safe-themes
   (quote
    ("d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" default)))
 '(eval-expression-print-length nil)
 '(geiser-active-implementations (quote (racket)))
 '(global-control-mode nil)
 '(ido-create-new-buffer (quote always))
 '(ido-ignore-extensions t)
 '(ispell-program-name "aspell")
 '(ivy-on-del-error-function (quote ignore))
 '(java-mode-hook (quote (turn-on-pretty-mode)))
 '(linum-format " %7i ")
 '(lisp-interaction-mode-hook (quote (turn-on-pretty-mode)))
 '(lisp-mode-hook
   (quote
    (common-lisp-lisp-mode-hook
     (lambda nil
       (add-hook
        (quote font-lock-extend-region-functions)
        (quote slime-extend-region-for-font-lock)
        t t))
     (lambda nil
       (set
        (make-local-variable
         (quote indent-tabs-mode))
        nil))
     slime-lisp-mode-hook turn-on-pretty-mode)))
 '(magit-dispatch-arguments nil)
 '(objc-mode-hook (quote (turn-on-pretty-mode)))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill)))
 '(package-selected-packages
   (quote
    (zig-mode dockerfile-mode dired-hide-dotfiles scribble-mode lsp-dart dart-mode anki-editor org-plus-contrib org slack clojure-mode doom-themes sublime-themes aggressive-indent flx counsel-projectile counsel-world-clock counsel ivy-gitlab gitlab projectile ace-jump-mode control-mode graphql-mode omnisharp yasnippet-snippets csharp-mode pretty-mode package-build shut-up epl git commander f dash s feature-mode magit buffer-move yasnippet visual-regexp browse-kill-ring smart-region ido-at-point darcsum geiser adoc-mode julia-shell julia-mode nim-mode fsharp-mode csv-mode rust-mode paredit racket-mode circe twittering-mode switch-window sml-mode smex slime lua-mode actionscript-mode)))
 '(safe-local-variable-values (quote ((rust-indent-offset . 2))))
 '(send-mail-function (quote smtpmail-send-it))
 '(shell-file-name "/bin/bash")
 '(smtpmail-smtp-server "bitpuffin.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "white")))))
