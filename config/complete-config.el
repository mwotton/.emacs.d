;; this is a bet of a mess - if i could find a way of getting company to do everything
;; i would. this works, though.
(defun ido-execute ()
 (interactive)
 (call-interactively
  (intern
   (ido-completing-read
    "M-x "
    (let (cmd-list)
      (mapatoms (lambda (S) (when (commandp S) (setq cmd-list (cons (format "%S" S) cmd-list)))))
      cmd-list)))))

(global-set-key "\M-x" 'ido-execute)

;; (setq ido-enable-flex-matching t)

(defun load-flx ()
  (require 'flx-ido)
  (ido-mode 1)
  (ido-everywhere 1)
  (flx-ido-mode 1)
  ;; disable ido faces to see flx highlights.
  (setq ido-use-faces nil))
(load-flx)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
; (global-set-key "\M-x" 'company-complete)
(provide 'complete-config)
