;;; setup-ido.el --- Configures ido
;;
;;; Commentary:
;;
;; http://www.emacswiki.org/emacs/InteractivelyDoThings
;;
;;; Code:

(require 'ido)
(require 'use-package)

(ido-mode 1)

;; Only match files in the current directory
(setq ido-auto-merge-work-directories-length -1)

;; Allows partial matching
(setq ido-enable-flex-matching t)

;; Disable ffap
(setq ido-use-filename-at-point nil)

;; Also include recent buffers
(setq ido-use-virtual-buffers t)

;;; setup-ido.el ends here
