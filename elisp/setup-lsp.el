;;; setup-lsp.el --- Setup emacs-lsp
;;
;;; Commentary:
;;
;; https://emacs-lsp.github.io/lsp-mode/
;;
;; Requires calling M-x lsp-install-server
;;
;;; Code:

(use-package lsp-mode
  :hook ((clojure-mode . lsp)
         (typescript-ts-mode . lsp))
  :init
  (setq gc-cons-threshold (* 100 1024 1024)
        read-process-output-max (* 1024 1024)))

(provide 'setup-lsp)
;;; setup-lsp.el ends here
