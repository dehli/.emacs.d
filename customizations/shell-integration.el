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
