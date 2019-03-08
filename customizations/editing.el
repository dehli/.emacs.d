;; Customizations relating to editing a buffer.

;; Highlight matching parens
(show-paren-mode 1)

;; Favor regex searching
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

(setq auto-save-default nil)

(setq electric-indent-mode 1)

;; White space management
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(put 'erase-buffer 'disabled nil)
(global-flycheck-mode)
