;; comment or uncomment region
(global-set-key (kbd "C-c /") 'comment-or-uncomment-region)

(global-set-key (kbd "C-b") 'ibuffer)

;; killbuffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;; undo
(global-set-key (kbd "C-z") 'undo)

;; find recent files
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)


;; switch betweein windows with Ctrl-left, Ctrl-right, Ctrl-Up, Ctrl-Down
(windmove-default-keybindings 'control)
