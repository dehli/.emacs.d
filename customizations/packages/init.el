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
    projectile
    smex
    use-package
    vterm
    yaml-mode
    yasnippet

    ;; Clojure packages
    cider
    clj-refactor
    clojure-mode
    clojure-mode-extra-font-locking
    clojure-snippets
    flycheck-clj-kondo
    paredit
    rainbow-delimiters))

(dolist (p my-packages)
  (straight-use-package p))

(setq straight-use-package-by-default t)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;; init.el ends here
