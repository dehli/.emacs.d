;;; setup-helm.el --- Configures helm
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package helm
  :init
  (global-set-key (kbd "M-x") 'helm-M-x)
  (setq helm-M-x-fuzzy-match t
        helm-split-window-inside-p t)

  (helm-mode 1)

  :config
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-z")  'helm-select-action))

(provide 'setup-helm)
;;; setup-helm.el ends here
