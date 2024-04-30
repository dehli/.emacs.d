;;; setup-yasnippet.el --- Configures YASnippet
;;
;;; Commentary:
;;
;; Sets up YASnippet, a template system for Emacs.
;;
;;; Code:

(use-package yasnippet
  :commands (yas-reload-all)
  :hook ((prog-mode . yas-minor-mode))
  :config (yas-reload-all))

(use-package yasnippet-snippets
  :after (yasnippet))

(provide 'setup-yasnippet)
;;; setup-yasnippet.el ends here
