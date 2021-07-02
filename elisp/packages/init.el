;;; init.el --- Initializess packages

;;; Commentary:
;;

;;; Code:

(load "packages/bootstrap-straight.el")

;; Workaround to get nadvice working
(straight--package-built-in-p 'nadvice)
(puthash 'nadvice t straight--cached-built-in-packages)

(defvar my-packages
  '(;; General packages
    ag
    auto-complete
    company
    el-patch
    exec-path-from-shell
    flycheck
    helm
    ido-completing-read+
    magit
    paredit
    projectile
    rainbow-delimiters
    smex
    use-package
    vterm
    yaml-mode
    yasnippet))

(dolist (p my-packages)
  (straight-use-package p))

(setq straight-use-package-by-default t)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;; init.el ends here
