;; Sets up exec-path-from shell - Mac OS
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns x))
  (setq exec-path-from-shell-variables '("PATH"
                                         "DATOMIC_USERNAME"
                                         "DATOMIC_PASSWORD"))
  (exec-path-from-shell-initialize)
;;(exec-path-from-shell-copy-envs
;; '("PATH"))
  )

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH")))
