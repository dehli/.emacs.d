;;; setup-org-mode.el --- Org mode support
;;
;;; Commentary:
;;
;;; Code:

(require 'dash)
(require 'magit)
(require 'use-package)

(use-package org)

(use-package org-roam
  :bind
  (("C-c n l" . org-roam-buffer-toggle)
   ("C-c n f" . org-roam-node-find)
   ("C-c n g" . org-roam-graph)
   ("C-c n i" . org-roam-node-insert)
   ("C-c n c" . org-roam-capture)

   ("C-c n j" . org-roam-dailies-capture-today)
   ("C-c n t" . #'org-roam-display-todo))

  :commands
  (org-roam-db-autosync-enable)

  :config
  (org-roam-db-autosync-enable))

(require 'org-roam-mode)
(require 'org-roam-node)

(defun org-roam-display-todo ()
  "Display and select org-roam dedicated buffer for TODO."
  (interactive)
  (-> (org-roam-node-from-title-or-alias "TODO")
      org-roam-buffer-display-dedicated
      select-window)
  (magit-section-show-level-2))

(defun org-roam-git (cmd)
  "Execute `git CMD` from the org-roam repo."
  (shell-command
   (format "cd %s && git %s"
           org-roam-directory
           cmd)))

(defun org-roam-git-add-commit-push ()
  "Add files, commit them, and then push to org-roam repo."
  (interactive)
  (org-roam-git "add ./**/*.org")
  (org-roam-git "commit -m 'Add notes using emacs.'")
  (org-roam-git "push"))

(provide 'setup-org-mode)
;;; setup-org-mode.el ends here
