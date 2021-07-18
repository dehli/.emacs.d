;;; clipboard.el --- Updates emacs commands to work with system clipboard
;;
;;; Commentary:
;;
;; This script will send the contents of `kill-ring` to either pbcopy or xsel.
;;
;;; Code:

(require 'paredit)

(defvar copy-cmd
  (if (eq system-type 'darwin)
      "pbcopy"
    "xsel -i -b"))

(defun copy-kill-ring ()
  "Execute `copy-cmd` with the most recent value in `kill-ring`."
  (shell-command (format "echo %s | %s"
                         (shell-quote-argument
                          (substring-no-properties
                           (car kill-ring)))
                         copy-cmd)))

(defun kill-line-copy ()
  "Call `kill-line` and copy its content."
  (interactive)
  (kill-line)
  (copy-kill-ring))

(defun kill-region-copy (beg end &optional region)
  "Call `kill-region` and copy its content.
Passes BEG, END, and optionally REGION to built in `kill-region`."
  (interactive (list (mark) (point) 'region))
  (kill-region beg end region)
  (copy-kill-ring))

(defun paredit-kill-copy ()
  "Call `paredit-kill` and copy its content."
  (interactive)
  (paredit-kill)
  (copy-kill-ring))

(global-set-key (kbd "C-k") 'kill-line-copy)
(global-set-key (kbd "C-w") 'kill-region-copy)

(define-key paredit-mode-map (kbd "C-k") 'paredit-kill-copy)

(provide 'clipboard)
;;; clipboard.el ends here
