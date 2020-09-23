;; Customizations relating to editing a buffer.

;; Highlight matching parens
(show-paren-mode 1)
(yas-global-mode 1)
(global-flycheck-mode)

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

;; Insert random uuid (credit to @oconn)
(defun insert-random-uuid ()
  (interactive)
  (let ((uuid (shell-command-to-string "uuidgen")))
    (insert "\"" (string-trim-right (downcase uuid)) "\"")))

(global-set-key (kbd "C-c M-u") 'insert-random-uuid)

(setq backup-directory-alist `(("." . "~/.saves")))

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))
