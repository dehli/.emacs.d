;;; setup-clojure.el --- Clojure(script) support
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package clojure-mode
  :init
  (add-hook 'clojure-mode-hook
            (lambda ()
              (clj-refactor-mode 1)
              ;; This choice of keybinding leaves cider-macroexpand-1 unbound
              (cljr-add-keybindings-with-prefix "C-c C-m")))
  :config
  (put-clojure-indent 'async 1)
  (put-clojure-indent 'go-try 0)
  (put-clojure-indent '>defn- 1)
  (put-clojure-indent '>defn 1)
  (put-clojure-indent '>def 1))

(use-package cider
  :after (clojure-mode)
  :init
  (setq cider-repl-history-file "~/.emacs.d/cider-history")
  (setq cider-repl-wrap-history t)
  (add-hook 'cider-mode-hook 'eldoc-mode))

(use-package clj-refactor
  :after (clojure-mode))

(use-package clojure-snippets
  :after (clojure-mode))

(use-package flycheck-clj-kondo
  :after (clojure-mode))

;; Enable paredit for Clojure
(require 'paredit)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'cider-repl-mode-hook 'enable-paredit-mode)

;; Setup rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(provide 'setup-clojure)
;;; setup-clojure.el ends here
