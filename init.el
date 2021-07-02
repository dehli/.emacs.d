;;; init.el --- Initialization file for Emacs

;;; Commentary:
;;

;;; Code:

(add-to-list 'load-path "~/.emacs.d/elisp/")

(load "packages/init.el")
(load "markdown.el")
(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "miscellaneous.el")
(load "setup-clojure.el")
(load "setup-helm.el")
(load "setup-web.el")
(load "clipboard.el")
(load "slack.el")
(load "projects.el")

;;; init.el ends here
