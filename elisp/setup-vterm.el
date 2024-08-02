;;; setup-vterm.el --- Sets up the vterm package -*- lexical-binding: t;-*-
;;
;;; Commentary:
;;
;;; Code:

(use-package multi-vterm)
(use-package vterm)

(require 'multi-vterm)
(require 'vterm)

(defun vterm-send-quit-emacs ()
  "Quit Emacs from within vterm."
  (interactive)
  (vterm-send "C-x")
  (vterm-send "C-c"))

(defun vterm-git-root ()
  "Set vterm's `default-directory` to root of .git directory."
  (interactive)
  (let ((root (locate-dominating-file default-directory ".git")))
    (if root
        (let ((default-directory root))
          (multi-vterm))
      (multi-vterm))))

(global-set-key (kbd "C-c v") 'vterm-git-root)

(provide 'setup-vterm)
;;; setup-vterm.el ends here
