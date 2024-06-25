;;; setup-org-mode.el --- Org mode support
;;
;;; Commentary:
;;
;;; Code:

(require 'dash)
(require 'magit)

(use-package org)

(use-package org-roam
  :bind
  (("C-c n l" . org-roam-buffer-toggle)
   ("C-c n f" . org-roam-node-find)
   ("C-c n g" . org-roam-graph)
   ("C-c n i" . org-roam-node-insert)
   ("C-c n c" . org-roam-capture)

   ("C-c n j" . org-roam-dailies-capture-today)
   ("C-c n n" . org-roam-dailies-goto-today)
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

(defun org-roam-git-add-commit-push ()
  "Add files, commit them, and then push to org-roam repo."
  (interactive)
  (let ((default-directory org-roam-directory))
    (shell-command "git add ./**/*.org")
    (shell-command "git commit -m 'Add notes using emacs.'")
    (shell-command "timeout 5s git push")))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((clojure . t)
   (emacs-lisp . t)
   (python . t)
   (shell . t)
   (sql . t)))

(provide 'setup-org-mode)
;;; setup-org-mode.el ends here
