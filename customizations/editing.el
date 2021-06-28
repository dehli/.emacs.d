;;; editing.el -- Customizations relating to editing a buffer.
;;
;;; Commentary:
;;
;; Contains configuration that makes editing of my
;; buffers easier.
;;
;;; Code:

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

;; Configure HideShow
(defun hideshow-mode-- nil
  "This function is used to enable hs-mode and hide all blocks."
  (hs-org/minor-mode)
  (hs-hide-all))

(use-package hideshow-org
  :init
  (add-hook 'clojure-mode-hook #'hideshow-mode--)
  (add-hook 'emacs-lisp-mode-hook #'hideshow-mode--)
  (add-hook 'javascript-mode-hook #'hideshow-mode--)
  (add-hook 'tide-mode-hook #'hideshow-mode--))

(provide 'editing)

;;; editing.el ends here
