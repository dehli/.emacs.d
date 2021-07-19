;;; miscellaneous.el --- Misc. customizations of emacs
;;
;;; Commentary:
;;
;;; Code:

(require 'smex)
(require 'vterm)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

(setq vterm-kill-buffer-on-exit t)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

;; Ensure that you don't accidentally close emacs
(setq confirm-kill-emacs 'y-or-n-p)

(provide 'miscellaneous)
;;; miscellaneous.el ends here
