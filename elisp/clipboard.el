;;; clipboard.el --- Updates emacs commands to work with system clipboard
;;
;;; Commentary:
;;
;; This script will send the contents of `kill-ring` to either pbcopy or xsel.
;;
;;; Code:

(defun shell-copy-command (txt)
  "Send TXT to the OS's clipboard."
  (shell-command
   (format (if (eq system-type 'darwin)
               "echo %s | pbcopy"
             "echo %s | wl-copy -n &>/dev/null")
           (shell-quote-argument txt))))

(defun copy-kill-ring ()
  "Execute `shell-copy-command` with the most recent value in `kill-ring`."
  (interactive)
  (shell-copy-command (substring-no-properties
                       (car kill-ring))))

(provide 'clipboard)
;;; clipboard.el ends here
