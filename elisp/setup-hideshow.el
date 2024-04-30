;;; setup-hideshow.el --- Enables hideshow mode
;;; Commentary:
;;; Code:

(use-package hideshow-org
  :commands (hs-org/minor-mode hs-hide-all)
  :hook ((prog-mode . (lambda ()
                        (hs-org/minor-mode)
                        (hs-hide-all)))))

(provide 'setup-hideshow)
;;; setup-hideshow.el ends here
