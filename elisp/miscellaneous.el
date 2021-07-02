;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

(setq vterm-kill-buffer-on-exit t)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)
