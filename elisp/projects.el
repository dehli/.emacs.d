;;; Projects.el -- Customizations related to my projects.
;;
;;; Commentary:
;;
;; These commands are specific to what I'm working on at.
;; It's unlikely that these are very useful to others.
;;
;;; Code:

;; Start up Kyber

(defun kyber-path (path)
  "PATH is subfolder within KYBER_HOME."
  (concat (getenv "KYBER_HOME") path))

(defun kyber-jack-in ()
  "This function opens the Kyber project."
  (interactive)
  (setq cider-offer-to-open-cljs-app-in-browser nil)
  (setq cider-preferred-build-tool 'shadow-cljs)
  (setq cider-repl-display-help-banner nil)
  (setq cider-shadow-default-options "server-dev")
  (cider-jack-in-cljs `(:project-dir ,(kyber-path "/server")
                        :cljs-repl-type shadow)))

(defun kyber-connect-node ()
  "Start vterm process and connect to KYBER."
  (interactive)
  (let ((buffer (vterm)))
    (vterm-send-string "node $KYBER_HOME/server/dev/build/js/main.js")
    (vterm-send-return)))

(provide 'projects)
;;; projects.el ends here
