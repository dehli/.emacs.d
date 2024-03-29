;;; packages.el --- Initializes packages

;;; Commentary:
;;

;;; Code:

(require 'straight)

(defvar my-packages
  '(;; General packages
    auto-complete
    company
    crux
    dash
    el-patch
    emacsql
    emacsql-sqlite
    esup
    f
    flycheck
    magit
    magit-section
    paredit
    pass
    project
    rainbow-delimiters
    s
    smex
    treesit-auto
    use-package
    yaml-mode))

(dolist (p my-packages)
  (straight-use-package p))

(setq straight-use-package-by-default t)

(use-package treesit-auto
  :config
  (global-treesit-auto-mode))

(provide 'packages)
;;; packages.el ends here
