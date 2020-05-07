(setq warning-minimum-level :emergency)

;; Define package repositories
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(;; General packages
    ag
    company
    flycheck
    helm
    ido-ubiquitous
    projectile
    smex
    vterm

    ;; Clojure packages
    flycheck-joker
    cider
    clojure-mode
    clojure-mode-extra-font-locking
    paredit
    rainbow-delimiters))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Load Customization
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "miscellaneous.el")

(load "setup-clojure.el")

(load "setup-helm.el")
(load "clipboard.el")
