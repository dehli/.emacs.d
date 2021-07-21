;;; utils.el --- A set of utility functions
;;
;;; Commentary:
;;
;;; Code:

(defun uuidgen ()
  "Return a random uuid."
  (interactive)
  (let ((uuid (shell-command-to-string "uuidgen")))
    (string-trim-right (downcase uuid))))

(provide 'utils)
;;; utils.el ends here
