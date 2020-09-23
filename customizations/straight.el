;;; straight.el --- Straight package manager initialization

;;; Commentary:
;;

;;; Code:

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Workaround to get nadvice working
(straight--package-built-in-p 'nadvice)
(puthash 'nadvice t straight--cached-built-in-packages)

(defvar my-packages
  '(;; General packages
    ag
    auto-complete
    company
    el-patch
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

;;; straight.el ends here
