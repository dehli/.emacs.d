;;; setup-midnight.el --- Setup midnight package
;;
;;; Commentary:
;;  This script is used to setup tasks that
;;  should run every set interval.
;;
;;; Code:

(require 'midnight)

;; Trigger midnight-hook every 7200 seconds (2 hours)
(setq midnight-period 7200)
(midnight-delay-set 'midnight-delay "00:00")

(add-hook 'midnight-hook 'org-roam-git-add-commit-push)

(provide 'setup-midnight)
;;; setup-midnight.el ends here
