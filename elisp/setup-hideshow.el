;;; setup-hideshow.el --- Enables hideshow mode
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package hideshow-org
  :commands (hs-org/minor-mode hs-hide-all)
  :hook ((prog-mode . (lambda ()
                        (hs-org/minor-mode)
                        (hs-hide-all)))))

(provide 'setup-hideshow)
;;; setup-hideshow.el ends here
