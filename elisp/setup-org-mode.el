;;; setup-org-mode.el --- Org mode support
;;
;;; Commentary:
;;
;;; Code:

(require 'use-package)

(use-package org)

;; :init
;; (setq org-roam-dailies-directory "daily/")

;; (setq org-roam-dailies-capture-templates
;;       '(("d" "default" entry
;;          "* %?"
;;          :target (file+head "%<%Y-%m-%d>.org"
;;                             "#+title: %<%Y-%m-%d>\n"))))

(use-package org-roam
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert))

  :commands (org-roam-db-autosync-enable)

  :config
  (org-roam-db-autosync-enable))

(provide 'setup-org-mode)
;;; setup-org-mode.el ends here
