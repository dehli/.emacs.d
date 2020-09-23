;;; slack.el --- Initialization file for Slack
;; Setup Emacs Slack


;;; Commentary:
;; https://github.com/yuya373/emacs-slack

;;; Code:

(use-package slack
  :commands (slack-start)
  :init
  (setq slack-buffer-emojify t)
  (setq slack-prefer-current-team t)

  :config
  (slack-register-team
   :name "ArcheMedX"
   :default t
   :token (getenv "SLACK_TOKEN")
   :full-and-display-names t))

(use-package helm-slack
  :straight (el-patch :type git :host github :repo "yuya373/helm-slack")
  :after (slack))

(use-package alert
  :commands (alert)
  :init
  (setq alert-default-style 'notifier))

;;; slack.el ends here
