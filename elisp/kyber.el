;;; kyber.el -- Customizations related to projects.
;;
;;; Commentary:
;;
;; These commands are specific to what I'm working on.
;; It's unlikely that these are very useful to others.
;;
;;; Code:

(require 'cider)
(require 'exec-path-from-shell)

(defun why-jack-in ()
  "This function opens the why project."
  (interactive)
  (setq cider-shadow-default-options "services-dev")
  (cider-connect-cljs `(:cljs-repl-type shadow-select
                        :host "localhost"
                        :project-dir ,(exec-path-from-shell-copy-env "WHY_HOME")
                        :port 8777)))

(provide 'kyber)
;;; kyber.el ends here
