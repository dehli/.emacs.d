;;; setup-hideshow.el --- Enables hideshow mode
;;; Commentary:
;;; Code:

(use-package hideshow-org
  :commands (hs-org/minor-mode hs-hide-all)
  :hook ((prog-mode . (lambda ()
                        (let ((file-name (buffer-file-name)))
                          (unless (or (string-suffix-p ".ejs" file-name)
                                      (string-suffix-p ".html" file-name))
                            (hs-org/minor-mode)
                            (hs-hide-all)))))))

(provide 'setup-hideshow)
;;; setup-hideshow.el ends here
