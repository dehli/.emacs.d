;;; setup-vterm.el --- Sets up the vterm package
;;
;;; Commentary:
;;
;;; Code:

(require 'use-package)

(use-package vterm)

(use-package multi-vterm
  :bind
  (("C-c v" . multi-vterm)))

(require 'vterm)
(defun vterm-send-quit-emacs ()
  "Quit Emacs from within vterm."
  (interactive)
  (vterm-send-C-x)
  (vterm-send-C-c))

(provide 'setup-vterm)
;;; setup-vterm.el ends here
