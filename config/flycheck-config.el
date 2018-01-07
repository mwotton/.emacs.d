
(require 'flycheck)
(require 'flycheck-arduino)


(add-hook 'arduino-mode-hook 'flycheck-arduino-setup)

;(require 'purescript-mode-autoloads)
;;(add-hook 'purescript-mode-hook #'haskell-indentation-mode)
(setq-default flycheck-purescript-compile-output-dir "output")

(setq flycheck-check-syntax-automatically '(mode-enabled save))
(add-hook 'c-mode-hook (lambda () (flymake-mode)))
(provide 'flycheck-config)
;(eval-after-load 'flycheck
;  '(flycheck-purescript-setup))
(global-set-key "\M-n" 'next-error)
(global-set-key "\M-p" 'previous-error)
