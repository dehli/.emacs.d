;;; setup-org-mode.el --- Org mode support
;;
;;; Commentary:
;;
;;; Code:

(require 'use-package)

(use-package org)

(use-package org-roam
  :init
  (setq org-roam-dailies-directory "daily/")

  (setq org-roam-dailies-capture-templates
        '(("d" "default" entry
           "* %?"
           :target (file+head "%<%Y-%m-%d>.org"
                              "#+title: %<%Y-%m-%d>\n")))))

(provide 'setup-org-mode)
;;; setup-org-mode.el ends here
