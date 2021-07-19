;;; init.el --- Initialization file for Emacs

;;; Commentary:
;;

;;; Code:

(add-to-list 'load-path "~/.emacs.d/elisp/")

(load "bootstrap-straight.el")
(load "packages.el")

(load "setup-ag.el")
(load "setup-clojure.el")
(load "setup-helm.el")
(load "setup-hideshow.el")
(load "setup-ido.el")
(load "setup-projectile.el")
(load "setup-slack.el")
(load "setup-web.el")
(load "setup-yasnippet.el")

(load "clipboard.el")
(load "editing.el")
(load "miscellaneous.el")
(load "kyber.el")
(load "ui.el")

;;; init.el ends here
