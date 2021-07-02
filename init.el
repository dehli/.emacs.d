;;; init.el --- Initialization file for Emacs

;;; Commentary:
;;

;;; Code:

(add-to-list 'load-path "~/.emacs.d/elisp/")

(load "bootstrap-straight.el")
(load "packages.el")
(load "navigation.el")
(load "ui.el")
(load "setup-hideshow.el")
(load "editing.el")
(load "miscellaneous.el")
(load "setup-clojure.el")
(load "setup-helm.el")
(load "setup-slack.el")
(load "setup-web.el")
(load "clipboard.el")
(load "projects.el")

;;; init.el ends here
