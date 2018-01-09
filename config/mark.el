
;; TODO
;;   - add todo/undefined/etc tracking
;;   - add check for non-emacs requirements
;;     - stack (with version check)
;;     - fonts
;;     - ...

(require 'package)
;(add-to-list 'package-archives
;	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))
; (global-set-key "\M-x" 'company-complete)

; packges to install automatically
; flx-ido
; intero
; flycheck
; smart-mode-line
; color-theme-sanityinc-solarized
; rainbow-delimiters


;; PATHS
(add-to-list 'load-path "/home/mark/.emacs.d/config")

;; local configuration
(require 'org-config)
(require 'haskell-config)
(require 'flycheck-config)
(require 'backup-config)
(require 'hasklig-ligatures)
(require 'complete-config)

(setq x-super-keysym 'meta)

(setq debug-on-quit nil)
(set-variable 'show-trailing-whitespace 't)

(setq font-lock-maximum-decoration t)





;;; random hacks
; (global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

(require 'compile)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(server-start)

;; Prose editing
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
(setq ispell-program-name "/usr/bin/aspell")


(add-hook 'after-init-hook (lambda ()
          (require 'smart-mode-line)
          ( sml/setup)))

(display-battery-mode)
(require 'smart-kill-buffer)
;(ad-activate 'kill-buffer)
;(ad-deactivate 'kill-buffer)

(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(set-face-attribute 'rainbow-delimiters-unmatched-face nil
                    :foreground 'unspecified
                    :inherit 'error)



;;(set-frame-font "Pragmata Pro 16")
(set-frame-font "Hasklig 14")

(put 'dired-find-alternate-file 'disabled nil)

(provide 'mark)
