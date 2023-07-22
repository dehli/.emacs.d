;;; init.el --- Initialization file for Emacs

;;; Commentary:
;;

;;; Code:

(add-to-list 'load-path "~/.emacs.d/elisp/")

(load "bootstrap-straight.el")
(straight-use-package 'org)

(load "packages.el")

(load "setup-ag.el")
(load "setup-blockchain.el")
(load "setup-clojure.el")
(load "setup-env.el")
(load "setup-lsp.el")
(load "setup-helm.el")
(load "setup-hideshow.el")
(load "setup-ido.el")
(load "setup-midnight.el")
(load "setup-org-mode.el")
(load "setup-projectile.el")
(load "setup-slack.el")
(load "setup-web.el")
(load "setup-vterm.el")
(load "setup-yasnippet.el")

(load "clipboard.el")
(load "editing.el")
(load "miscellaneous.el")
(load "kyber.el")
(load "ui.el")
(load "utils.el")

;;; init.el ends here
