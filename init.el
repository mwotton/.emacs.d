

(add-to-list 'load-path "/home/mark/.emacs.d/config")
(require 'mark)


;; all automatically managed from here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"))
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "3c2e0f4c2abcba7d3dc881280b5e5731322ac552c7c6a4f3aeb73c6081f49a24" "411f17990b151925207a99f002597c8bba0204cc693663287adeea998831a1ac" default)))
 '(fci-rule-color "#073642")
 '(flycheck-arduino-executable nil)
 '(haskell-emacs-build-tool (quote stack))
 '(haskell-emacs-ghc-executable "stackghc")
 '(haskell-notify-p t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-add-package t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl) t)
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save t)
 '(hindent-style "chris-done")
 '(magit-use-overlays nil)
 '(org-agenda-files (quote ("~/org/work.org" "~/org/personal.org")))
 '(package-selected-packages
   (quote
    (yasnippet yaml-mode windresize window-number which-key w3m twittering-mode tuareg timp starter-kit-ruby starter-kit-lisp starter-kit-bindings solarized-theme smooth-scroll smart-mode-line shm scala-mode rvm ruby-block rinari rainbow-delimiters queue puppet-mode psci php-mode perspective nrepl nix-mode mo-git-blame merlin maxframe markdown-mode lua-mode js2-mode jinja2-mode intero hlint-refactor hippie-expand-haskell haml-mode go-mode git-gutter ghci-completion ghc-imported-from fsharp-mode flymake-lua flx floobits fill-column-indicator expand-region ess erlang elm-mode distinguished-theme deferred company-ghc color-theme-solarized color-theme-sanityinc-solarized coffee-mode calmer-forest-theme ag)))
 '(purescript-mode-hook
   (quote
    (turn-on-purescript-indentation haskell-indentation-mode)))
 '(rainbow-delimiters-max-face-count 1)
 '(safe-local-variable-values
   (quote
    ((intero-targets "bullseye:test:tests" "perspective:lib" "perspective:test:tests")
     (intero-targets "perspective:lib" "perspective:test:tests")
     (haskell-process-use-ghci . t)
     (haskell-indent-spaces . 4)
     (encoding . utf-8)
     (whitespace-line-column . 80)
     (lexical-binding . t))))
 '(shift-select-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(warning-minimum-log-level :debug))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(color-theme-sanityinc-solarized-dark)
