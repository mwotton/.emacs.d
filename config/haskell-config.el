(require 'flycheck-haskell-stack)

(add-to-list 'completion-ignored-extensions ".hi")
(add-to-list 'completion-ignored-extensions ".o")
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

(intero-global-mode 1)
(with-eval-after-load 'intero
  (flycheck-add-next-checker 'intero '(warning . haskell-hlint)))


(add-hook 'haskell-mode-hook
          (lambda ()
;            (ghc-init)
                                        ;(flymake-mode)
;            (flycheck-select-checker 'haskell-stack)
                                        ;            (flycheck-mode)
      ;      (intero-mode)
;            (ghc-init)
                                        ;            (flymake-hlint-load)
            (hlint-refactor-mode)
            (turn-on-haskell-indentation)
;            (whitespace-mode)
;            (haskell-mode-stylish-buffer)

;            (local-set-key "\M-/" 'ghc-complete)
            ))
                                        ;(global-set-key "\M-/" 'hippie-expand)

(setq
        ghc-ghc-options '("-fno-warn-missing-signatures")
        haskell-compile-cabal-build-command "cd %s && stack build"
        haskell-process-type 'stack-ghci
        haskell-interactive-popup-errors nil
        haskell-process-args-stack-ghci '("--ghc-options=-ferror-spans" "--with-ghc=ghci-ng")
        haskell-process-path-ghci "stack"        )



; unfortunately, ghc-mod saves automatically
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; interactive

(set-variable 'haskell-literate nil)

(custom-set-variables
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t)
  '(haskell-process-suggest-add-package t)
  ;'(haskell-process-suggest-hoogle-imports t)
  ;'(haskell-process-suggest-language-pragmas t)
  ;'(haskell-process-suggest-no-warn-orphans t)
  ;'(haskell-process-suggest-overloaded-string t)
  ;'(haskell-process-suggest-remove-import-lines t)
  )
(provide 'haskell-config)




;; possibly useful detritus

;; ;; Haskell main editing mode key bindings.
;; (defun haskell-hook ()
;;   ;; Use simple indentation.
;;   (turn-on-haskell-simple-indent)
;;   (define-key haskell-mode-map (kbd "<return>") 'haskell-simple-indent-newline-same-col)
;;   (define-key haskell-mode-map (kbd "C-<return>") 'haskell-simple-indent-newline-indent)

;;   ;; Load the current file (and make a session if not already made).
;;   (define-key haskell-mode-map [?\C-c ?\C-l] 'haskell-process-load-file)
;;   (define-key haskell-mode-map [f5] 'haskell-process-load-file)

;;   ;; Switch to the REPL.
;;   (define-key haskell-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch)
;;   ;; “Bring” the REPL, hiding all other windows apart from the source
;;   ;; and the REPL.
;;   (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)

;;   ;; Build the Cabal project.
;;   (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
;;   ;; Interactively choose the Cabal command to run.
;;   (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

;;   ;; Get the type and info of the symbol at point, print it in the
;;   ;; message buffer.
;;   (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
;;   (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)

;;   ;; Contextually do clever things on the space key, in particular:
;;   ;;   1. Complete imports, letting you choose the module name.
;;   ;;   2. Show the type of the symbol after the space.
;;   (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

;;   ;; Jump to the imports. Keep tapping to jump between import
;;   ;; groups. C-u f8 to jump back again.
;;   (define-key haskell-mode-map [f8] 'haskell-navigate-imports)

;;   ;; Jump to the definition of the current symbol.
;;   (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)

;;   ;; Indent the below lines on columns after the current column.
;;   (define-key haskell-mode-map (kbd "C-<right>")
;;     (lambda ()
;;       (interactive)
;;       (haskell-move-nested 1)))
;;   ;; Same as above but backwards.
;;   (define-key haskell-mode-map (kbd "C-<left>")
;;     (lambda ()
;;       (interactive)
;;       (haskell-move-nested -1))))

;; ;; Useful to have these keybindings for .cabal files, too.
;; (defun haskell-cabal-hook ()
;;   (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
;;   (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)
;;   (define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
;;   (define-key haskell-cabal-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch))



;; Sample file for the new session/process stuff
;; Based on my own configuration. Well, it IS my configuration.
;;
;; NOTE: If you don't have cabal-dev, or you don't want to use it, you
;; should change haskell-process-type (see below) to 'ghci.
;;
;; To merely TRY this mode (and for debugging), do the below:
;;
;;     cd into haskell-mode's directory, and run
;;     $ emacs --load examples/init.el
;;
;; To get started, open a .hs file in one of your projects, and hit…
;;
;;   1. F5 to load the current file (and start a repl session), or
;;   2. C-` to just start a REPL associated with this project, or
;;   3. C-c C-c to build the cabal project (and start a repl session).

;; ;; Add the current dir for loading haskell-site-file.
;; (add-to-list 'load-path ".")
;; ;; Always load via this. If you contribute you should run `make all`
;; ;; to regenerate this.
;; (load "haskell-mode-autoloads")

;; ;; Customization
;; (custom-set-variables
;;  ;; Use cabal-dev for the GHCi session. Ensures our dependencies are in scope.
;;  '(haskell-process-type 'cabal-repl)

;;  ;; Use notify.el (if you have it installed) at the end of running
;;  ;; Cabal commands or generally things worth notifying.
;;  '(haskell-notify-p t)

;;  ;; To enable tags generation on save.
;;  '(haskell-tags-on-save t)

;;  ;; To enable stylish on save.
'(haskell-stylish-on-save nil)

;; (add-hook 'haskell-mode-hook 'haskell-hook)
;; (add-hook 'haskell-cabal-mode-hook 'haskell-cabal-hook)

;(require 'stack-mode)
;(add-hook 'haskell-mode-hook 'stack-mode)
; (setq haskell-stylish-on-save nil)

; (require 'speedbar)
;(speedbar-add-supported-extension ".hs")
; (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)


; (add-hook 'haskell-mode-hook (lambda () (ghc-init)))




;; (eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))
