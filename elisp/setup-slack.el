;;; setup-slack.el --- Initialization file for Slack
;; Setup Emacs Slack


;;; Commentary:
;; https://github.com/yuya373/emacs-slack

;;; Code:

(require 'exec-path-from-shell)

(use-package slack
  :commands (slack-start slack-register-team)
  :init
  (setq slack-buffer-emojify t)
  (setq slack-prefer-current-team t)

  :config
  (slack-register-team
   :name "ArcheMedX"
   :default t
   :token (exec-path-from-shell-copy-env "SLACK_TOKEN")
   :full-and-display-names t))

(use-package helm-slack
  :straight (helm-slack :type git :host github :repo "yuya373/helm-slack")
  :after (slack))

(use-package alert
  :commands (alert)
  :init
  (setq alert-default-style 'notifier))

(provide 'setup-slack)
;;; setup-slack.el ends here
