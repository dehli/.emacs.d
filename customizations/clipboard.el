(defvar copy-cmd
  (if (eq system-type 'darwin)
      "pbcopy"
    "xsel -i -b"))

(defun copy-kill-ring ()
  (shell-command (format "echo %s | %s"
                         (shell-quote-argument
                          (substring-no-properties
                           (car kill-ring)))
                         copy-cmd)))

(defun kill-line-copy ()
  (interactive)
  (kill-line)
  (copy-kill-ring))

(defun kill-region-copy (beg end &optional region)
  (interactive (list (mark) (point) 'region))
  (kill-region beg end region)
  (copy-kill-ring))

(defun paredit-kill-copy ()
  (interactive)
  (paredit-kill)
  (copy-kill-ring))

(global-set-key (kbd "C-k") 'kill-line-copy)
(global-set-key (kbd "C-w") 'kill-region-copy)

(define-key paredit-mode-map (kbd "C-k") 'paredit-kill-copy)
