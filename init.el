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
  '(;; Clojure packages
    cider
    clojure-mode
    clojure-mode-extra-font-locking
    paredit
    rainbow-delimiters

    ;; Web Dev
    web-mode
    yaml-mode

    ;; General packages
    ag
    ido-ubiquitous
    smex
    projectile
    flycheck
    company
    helm
    exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Load Customization

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "shell-integration.el")
(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "miscellaneous.el")

(load "setup-clojure.el")
(load "setup-js.el")

(load "setup-helm.el")
(load "setup-auto-complete.el")

;; Variables

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (cider-decompile
     cider-eval-sexp-fu
     yaml-mode
     ag
     helm
     company
     flycheck
     auto-complete
     rainbow-delimiters
     projectile
     smex
     ido-ubiquitous
     web-mode
     cider
     clojure-mode-extra-font-locking
     clojure-mode
     paredit
     exec-path-from-shell))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
