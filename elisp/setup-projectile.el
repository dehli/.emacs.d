;;; setup-projectile.el --- Configure projectile
;;
;;; Commentary:
;;
;;; Code:

(require 'use-package)

(use-package projectile
  :commands
  (projectile-mode)

  :bind-keymap
  ("C-c p" . projectile-command-map)

  :config
  (projectile-mode t))

(provide 'setup-projectile)
;;; setup-projectile.el ends here
