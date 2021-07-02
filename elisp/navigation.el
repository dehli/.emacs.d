;;; navitation.el --- Navigation configuration

;;; Commentary:
;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.

;;; Code:

;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(ido-mode t)

;; This allows partial matches, e.g. "tl" will match "Tyrion Lannister"
(setq ido-enable-flex-matching t)

;; Turn this behavior off because it's annoying
(setq ido-use-filename-at-point nil)

;; Don't try to match file across all "work" directories; only match files
;; in the current directory displayed in the minibuffer
(setq ido-auto-merge-work-directories-length -1)

;; Includes buffer names of recently open files, even if they're not
;; open now
(setq ido-use-virtual-buffers t)

;; This enables ido in all contexts where it could be useful, not just
;; for selecting buffer and file names
(ido-ubiquitous-mode 1)

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
