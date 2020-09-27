;;; markdown.el --- Markdown support

;;; Commentary:
;;

;;; Code:

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode ("\\.md\\'" . gfm-mode)
  :init
  (setq markdown-command "multimarkdown")
  (custom-set-variables
   '(markdown-command "/usr/local/bin/pandoc")))

;;; markdown.el ends here
