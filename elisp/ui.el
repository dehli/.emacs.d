;;; ui.el --- Configure UI

;;; Commentary:
;;

;;; Code:

;; Turn off the menu bar at the top of each frame because it's distracting
(menu-bar-mode -1)

;; Turn off the toolbar as well
(tool-bar-mode -1)

;; Truncate long lines
(setq-default truncate-lines t)

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Color Theme
(use-package solarized-theme)
(load-theme 'solarized-dark t)

;; Set font size
(set-face-attribute 'default nil :height 140)

;; Set default font
(when (member "Fira Code" (font-family-list))
  (set-frame-font "Fira Code"))

(set-frame-parameter nil 'internal-border-width 10)

(setq ;; makes killing/yanking interact with the clipboard
 select-enable-clipboard t

 ;; I'm actually not sure what this does but it's recommended?
 select-enable-primary t

 ;; Save clipboard strings into kill ring before replacing them.
 ;; When one selects something in another program to paste it into Emacs,
 ;; but kills something in Emacs before actually pasting it,
 ;; this selection is gone unless this variable is non-nil
 save-interprogram-paste-before-kill t

 ;; Shows all options when running apropos. For more info,
 ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
 apropos-do-all t

 ;; Mouse yank commands yank at point instead of at click.
 mouse-yank-at-point t)

;; No cursor blinking
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; no bell
(setq ring-bell-function 'ignore)

;; This is used for using mouse in terminal mode
(xterm-mouse-mode 1)
(global-set-key [mouse-4] 'scroll-down-line)
(global-set-key [mouse-5] 'scroll-up-line)

;; Show column number
(column-number-mode 1)

;; Occasionally, emacs won't take up full screen unless this is enabled
(setq frame-resize-pixelwise t)

;; On initial load, make sure it's maximized
(toggle-frame-maximized)

(global-set-key (kbd "C-=") #'ns-do-hide-emacs)

(provide 'ui)
;;; ui.el ends here
