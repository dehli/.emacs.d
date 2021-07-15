;;; setup-helm.el --- Configures helm
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package helm
  :init
  (setq helm-split-window-inside-p t)

  :bind
  (("M-x" . 'helm-M-x))

  :preface
  (require 'helm-config)

  :config
  (helm-mode 1))

(provide 'setup-helm)
;;; setup-helm.el ends here
