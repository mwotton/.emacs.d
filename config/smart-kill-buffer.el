
;; add a hook to diff files before killing
(defun my-kill-buffer (&optional mbuffer)
  (with-current-buffer (or mbuffer (current-buffer))
    (when (and (buffer-modified-p) (buffer-file-name))
      (let* ((tmpfile (diff-file-local-copy (current-buffer)))
             (cmd (call-process "diff" nil nil nil tmpfile (buffer-file-name))))
        (when (zerop cmd)
          (not-modified))))))


(defadvice kill-buffer (before my-kill-buffer (&optional mbuffer))
  "check with diff before asking the poor user"
  (my-kill-buffer mbuffer))

(provide 'smart-kill-buffer)
