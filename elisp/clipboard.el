;;; clipboard.el --- Updates emacs commands to work with system clipboard
;;
;;; Commentary:
;;
;; This script will send the contents of `kill-ring` to either pbcopy or xsel.
;;
;;; Code:

(require 'paredit)

(defun shell-copy-command (txt)
  "Send TXT to the OS's clipboard."
  (shell-command
   (format (if (eq system-type 'darwin)
               "echo %s | pbcopy"
             "echo %s | wl-copy -n &>/dev/null")
           (shell-quote-argument txt))))

(defun copy-kill-ring ()
  "Execute `shell-copy-command` with the most recent value in `kill-ring`."
  (shell-copy-command (substring-no-properties
                       (car kill-ring))))

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
