;; directory with config
(load "~/.emacs.d/rc/rc-defuns.el")

(setq make-backup-files nil)
(setq auto-save-default nil)

;; delete selection when typing
(delete-selection-mode t)

;; save last cursor position in file
(require 'saveplace)
(setq-default save-place t)

;; default input method
(setq default-input-method 'russian-computer)

;; don't use tabs for indent
(set-default 'indent-tabs-mode nil)

;; save history
(savehist-mode t)

;; encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(ansi-color-for-comint-mode-on)

;; yes and no
(fset 'yes-or-no-p 'y-or-n-p)

;; ido mode
(ido-mode t)

;; uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; permanent linum-mode
(defun linum-mode-find-file-hook ()
  (linum-mode t))
(add-hook 'find-file-hook 'linum-mode-find-file-hook)

;; recent files mode
(require 'recentf)
(recentf-mode 1)


(load-config "~/.emacs.d/rc/rc-keys.el")
(load-config "~/.emacs.d/rc/rc-python.el")
(load-config "~/.emacs.d/rc/rc-spell.el")
(load-config "~/.emacs.d/rc/rc-common.el")
(load-config "~/.emacs.d/rc/rc-custom.el")

(require 'desktop)
(desktop-save-mode 1)
(add-hook 'auto-save-hook (lambda () (desktop-save-in-desktop-dir)))

;; auto reloading of chanded files from disk
(auto-revert-mode t)
(load "package")
(require 'package)
