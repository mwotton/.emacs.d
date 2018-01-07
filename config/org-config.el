(provide 'org-config)
(add-to-list 'load-path "~/emacs/org")
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files
      (list "~/org/gtd.org" "~/org/work.org" "~/org/personal.org"))

; I prefer return to activate a link
(setq org-return-follows-link t)

(setq org-agenda-custom-commands
    '(("w" todo "WAITING" nil)
    ("n" todo "NEXT" nil)
    ("d" "Agenda + Next Actions" ((agenda) (todo "NEXT")))))

(defun gtd ()
   (interactive)
   (find-file "~/org/gtd.org"))

(add-to-list 'org-modules 'org-timer)
(add-to-list 'org-modules 'org-habit)
(setq org-timer-default-timer 45)

(add-hook 'org-clock-in-hook (lambda ()
      (if (not org-timer-current-timer)
      (org-timer-set-timer '(16)))))
