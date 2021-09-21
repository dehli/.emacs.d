;;; setup-env.el --- Sets up environment variables
;;
;;; Commentary:
;;
;;; Code:

(require 'use-package)

(use-package exec-path-from-shell)

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Load certain environment variables
;;
;; Note: this smells, I'd rather figure out
;; how to load all my env vars
(exec-path-from-shell-copy-env "KYBER_HOME")
(exec-path-from-shell-copy-env "WHY_HOME")

(provide 'setup-env)
;;; setup-env.el ends here
