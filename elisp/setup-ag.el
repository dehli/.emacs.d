;;; setup-ag.el --- Configure ag.el
;;
;;; Commentary:
;;  https://github.com/Wilfred/ag.el
;;
;;; Code:

(require 'use-package)

(use-package ag
  :config
  (setq ag-arguments '("--hidden" "--smart-case" "--stats"))
  (setq ag-highlight-search t)
  (setq ag-reuse-window t))

(provide 'setup-ag)
;;; setup-ag.el ends here
