;;; setup-lsp.el --- Setup emacs-lsp
;;
;;; Commentary:
;;
;; https://emacs-lsp.github.io/lsp-mode/
;;
;; Requires calling M-x lsp-install-server
;;
;;; Code:

(require 'use-package)

(use-package lsp-mode
  :hook ((clojure-mode . lsp))
  :init
  (setq gc-cons-threshold (* 100 1024 1024)
        read-process-output-max (* 1024 1024)
        ;; Use cider instead
        lsp-enable-indentation nil
        lsp-completion-enable nil))

(provide 'setup-lsp)
;;; setup-lsp.el ends here
