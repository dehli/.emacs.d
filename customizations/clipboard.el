(defvar copy-cmd
  (if (eq system-type 'darwin)
      "pbcopy"
    "xsel -i -b"))

(defun copy-kill-ring ()
  (let ((cmd (format "echo %s | %s"
                     (prin1-to-string
                      (substring-no-properties
                       (car kill-ring)))
                     copy-cmd)))

    (shell-command cmd)))

(defun kill-line-copy ()
  (interactive)
  (kill-line)
  (copy-kill-ring))

(defun kill-region-copy (beg end &optional region)
  (interactive (list (mark) (point) 'region))
  (kill-region beg end region)
  (copy-kill-ring))

(global-set-key (kbd "C-k") 'kill-line-copy)
(global-set-key (kbd "C-w") 'kill-region-copy)
