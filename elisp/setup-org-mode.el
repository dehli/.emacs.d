;;; setup-org-mode.el --- Org mode support
;;
;;; Commentary:
;;
;;; Code:

(require 'use-package)

(use-package org)

(use-package org-roam
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n t" . #'org-roam-display-todo))

  :commands (org-roam-db-autosync-enable)

  :config
  (org-roam-db-autosync-enable))

(require 'org-roam-mode)
(require 'org-roam-node)

(defun org-roam-display-todo ()
  "Display org-roam dedicated buffer for TODO."
  (interactive)
  (org-roam-buffer-display-dedicated
   (org-roam-node-from-title-or-alias "TODO")))

(provide 'setup-org-mode)
;;; setup-org-mode.el ends here
