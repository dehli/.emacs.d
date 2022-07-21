;;; init.el --- Initialization file for Emacs

;;; Commentary:
;;

;;; Code:

(add-to-list 'load-path "~/.emacs.d/elisp/")

(load "bootstrap-straight.el")

;; These lines can be removed once these issues are addressed
;; https://github.com/emacs-helm/helm/issues/2481
;; https://github.com/melpa/melpa/pull/7896
(setq straight-recipe-overrides nil)
(straight-override-recipe '(helm :files ("*.el" "emacs-helm.sh" (:exclude "helm-core.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el"))))
(straight-override-recipe '(helm-core :files ("helm-core.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el")))

(load "packages.el")

(load "setup-ag.el")
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
