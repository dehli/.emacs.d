;;; editing.el -- Customizations relating to editing a buffer.
;;
;;; Commentary:
;;
;; Contains configuration that makes editing of my
;; buffers easier.
;;
;;; Code:

;; Highlight matching parens

(require 'flycheck)

(show-paren-mode 1)
(global-flycheck-mode)
(setq flycheck-emacs-lisp-load-path 'inherit)

;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; Favor regex searching
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

(setq auto-save-default nil)

(setq electric-indent-mode 1)

;; White space management
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(put 'erase-buffer 'disabled nil)

(defun insert-random-uuid ()
  "Insert a random uuid into the current buffer (credit to @oconn)."
  (interactive)
  (let ((uuid (shell-command-to-string "uuidgen")))
    (insert "\"" (string-trim-right (downcase uuid)) "\"")))

(setq backup-directory-alist `(("." . "~/.saves")))

(provide 'editing)
;;; editing.el ends here
