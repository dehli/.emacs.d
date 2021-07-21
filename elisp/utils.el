;;; utils.el --- A set of utility functions
;;
;;; Commentary:
;;
;;; Code:

(require 'dash)

(defun uuidgen ()
  "Return a random uuid."
  (interactive)
  (-> (shell-command-to-string "uuidgen")
      downcase
      string-trim-right))

(provide 'utils)
;;; utils.el ends here
