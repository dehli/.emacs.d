;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH"
     "DATOMIC_USERNAME"
     "DATOMIC_PASSWORD"
     "INSIGHTS_DB_PASSWORD"
     "XPA_AWS_SES_SECRET_ACCESS_KEY_ID"
     "XPA_USER_POOL_SECRET_KEY")))

;; If there's an .env at the root of the Git project, then source it
(let* ((project-dir (car (split-string (shell-command-to-string
                                        "git rev-parse --show-toplevel"))))
       (env-content (shell-command-to-string
                     (concat "FILE=" project-dir "/.env && test -f $FILE && cat $FILE")))
       (vars (split-string env-content)))

  (dolist (elt vars)
    (let ((value (split-string elt "=")))
      (setenv (nth 0 value) (nth 1 value)))))
