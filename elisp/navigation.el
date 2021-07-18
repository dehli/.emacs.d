;;; navitation.el --- Navigation configuration

;;; Commentary:
;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.

;;; Code:

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

;; projectile everywhere!
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Ensure that you don't accidentally close emacs
(setq confirm-kill-emacs 'y-or-n-p)

;;; navigation.el ends here
