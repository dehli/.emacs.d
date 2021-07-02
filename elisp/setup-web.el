;;; setup-web.el --- Web support

;;; Commentary:
;;

;;; Code:

(require 'use-package)

(use-package tide
  :init
  (setq typescript-indent-level 2))

(use-package web-mode
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2))

(defun setup-tide-mode ()
  "Used to setup the tide (Typescript) server."
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(flycheck-add-mode 'typescript-tslint 'web-mode)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(setq js-indent-level 2)
(setq company-tooltip-align-annotations t)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(provide 'setup-web)
;;; setup-web.el ends here
