;;; setup-helm.el --- Configures helm
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package helm
  :init
  (setq helm-split-window-inside-p t)

  :bind (("M-x" . 'helm-M-x))

  :config
  (helm-mode 1)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-z")  'helm-select-action))

(provide 'setup-helm)
;;; setup-helm.el ends here
