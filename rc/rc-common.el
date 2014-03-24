;; Prevent the startup message
(setq inhibit-startup-message t)

;; No toolbar
(tool-bar-mode 0)

;; No menubar
(menu-bar-mode 0)

;; No scrollbar
(scroll-bar-mode -1)


;; Display time in status bar
(display-time)

;; Display column number in status bar
(column-number-mode 't)

;; turn on column number mode
(column-number-mode t)

;; Scrolling
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position 't)
(setq scroll-margin 10)

;; type "y"/"n" instead of "yes"/"no"
(fset 'yes-or-no-p 'y-or-n-p)

;; normal pasting from X applications
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; all operations that copy some text to x selection will do so
;; for clipboard too
(setq x-select-enable-clipboard t)

;; replace tabs with spaces
(setq-default indent-tabs-mode nil)

;; hide cursor in non-selected windows
(set-default 'cursor-in-non-selected-windows nil)

(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)

(load (concat config-dir "~/.emacs.d/color-theme/themes/zenburn-theme.el"))
(load-theme 'zenburn t)


;; add new line at the end of file if there is no one on save
(custom-set-variables
 '(require-final-newline t))

;; default font
(set-frame-font "DejaVu Sans Mono-10" nil t)

;; highlight brackets
(show-paren-mode t)

;; highlight current line
(global-hl-line-mode t)

;; default major mode is text-mode
(setq default-major-mode 'text-mode)

(set-face-background 'hl-line "#4F4F4F")
