;;; kyber.el -- Customizations related to the Kyber project.
;;
;;; Commentary:
;;
;; These commands are specific to what I'm working on.
;; It's unlikely that these are very useful to others.
;;
;;; Code:

(require 'cider)
(require 'exec-path-from-shell)
(require 'multi-vterm)
(require 'vterm)

(defun kyber-path (path)
  "PATH is subfolder within KYBER_HOME."
  (concat (exec-path-from-shell-copy-env "KYBER_HOME") path))

(defun kyber-stack-name->aws-profile (stack-name)
  "Convert STACK-NAME to AWS-PROFILE."
  (if (string= stack-name "cp-dev")
      "arcx-cp"
    "arcx-dev"))

(defun kyber-connect-node ()
  "Start vterm process and connect to KYBER."
  (interactive)
  (let ((stack-name (ido-completing-read
                     "Stack Name:" '("cp-dev" "kyber-development" "kyber-staging")))

        (connect-parser (ido-completing-read
                         "Pathom Viz:" '("false" "true"))))

    (multi-vterm)

    ;; Env vars are sent separately so that you can kill the node process
    ;; and easily make changes to an individual variable if you wanted to.
    (vterm-send-string (concat "export AWS_PROFILE=" (kyber-stack-name->aws-profile stack-name)))
    (vterm-send-return)
    (vterm-send-string (concat "export STACK_NAME=" stack-name))
    (vterm-send-return)
    (vterm-send-string (concat "export CONNECT_PARSER=" connect-parser))
    (vterm-send-return)
    (vterm-send-string "node $KYBER_HOME/server/dev/build/js/main.js")
    (vterm-send-return)))

(defun kyber-jack-in ()
  "This function opens the Kyber project."
  (interactive)
  (setq cider-offer-to-open-cljs-app-in-browser nil)
  (setq cider-preferred-build-tool 'shadow-cljs)
  (setq cider-repl-display-help-banner nil)
  (setq cider-shadow-default-options "server-dev")
  (setq cider-shadow-cljs-parameters "server -A:test")
  (cider-jack-in-cljs `(:cljs-repl-type shadow
                        :project-dir ,(kyber-path "/server")))

  ;; Give shadow enough time to compile. Ideally this would be triggered
  ;; from an event, but I haven't learned enough about emacs/cider.
  (run-at-time "30 sec" nil #'kyber-connect-node))

(provide 'kyber)
;;; kyber.el ends here
