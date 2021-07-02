;;; setup-hideshow.el --- Enables hideshow mode
;;; Commentary:
;;; Code:

(require 'use-package)

(defun setup-hs-mode-- nil
  "This function is used to enable hs-mode and hide all blocks."
  (hs-org/minor-mode)
  (hs-hide-all))

(use-package hideshow-org
  :init
  (add-hook 'clojure-mode-hook #'setup-hs-mode--)
  (add-hook 'emacs-lisp-mode-hook #'setup-hs-mode--)
  (add-hook 'js-mode-hook #'setup-hs-mode--)
  (add-hook 'tide-mode-hook #'setup-hs-mode--))

(provide 'setup-hideshow)
;;; setup-hideshow.el ends here
