;;; setup-helm.el --- Configures helm
;;; Commentary:
;;; Code:

(use-package helm
  :init
  (setq helm-split-window-inside-p t)

  :bind
  (("M-x" . 'helm-M-x))

  :config
  (helm-mode 1))

(provide 'setup-helm)
;;; setup-helm.el ends here
