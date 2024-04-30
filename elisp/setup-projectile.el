;;; setup-projectile.el --- Configure projectile
;;
;;; Commentary:
;;
;;; Code:

(use-package projectile
  :commands
  (projectile-mode)

  :bind-keymap
  ("C-c p" . projectile-command-map)

  :config
  (projectile-mode t)
  (setq projectile-create-missing-test-files t))

(provide 'setup-projectile)
;;; setup-projectile.el ends here
