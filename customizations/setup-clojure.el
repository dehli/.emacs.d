;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Clojure
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Enable paredit for Clojure
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; This is useful for working with camel-case tokens, like names of
;; Java classes (e.g. JavaClassName)
(add-hook 'clojure-mode-hook 'subword-mode)

;; Rainbows
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; A little more syntax highlighting
(require 'clojure-mode-extra-font-locking)
(require 'flycheck-clj-kondo)
(require 'paredit)
(require 'use-package)

(use-package lisp-code-fold
  :straight (lisp-code-fold :type git
                            :host github
                            :repo "oconn/lisp-code-fold.el"))

(add-hook 'clojure-mode-hook
          (lambda ()
            (lisp-code-fold-init)
            (clj-refactor-mode 1)
            (yas-minor-mode 1) ; for adding require/use/import statements
            ;; This choice of keybinding leaves cider-macroexpand-1 unbound
            (cljr-add-keybindings-with-prefix "C-c C-m")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cider
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; provides minibuffer documentation for the code you're typing into the repl
(add-hook 'cider-mode-hook 'eldoc-mode)

;; go right to the REPL buffer when it's finished connecting
(setq cider-repl-pop-to-buffer-on-connect t)

;; When there's a cider error, show its buffer and switch to it
(setq cider-show-error-buffer t)
(setq cider-auto-select-error-buffer t)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; enable paredit in your REPL
(add-hook 'cider-repl-mode-hook 'paredit-mode)

;; Use clojure mode for other extensions
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))

;; Some macros I use often
(put-clojure-indent 'async 1)
(put-clojure-indent 'go-try 0)
