(global-set-key (kbd "C-o") 'other-window)

;; Remap M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Remap C-w
;;(global-set-key "\C-w" 'backward-kill-word)
;;(global-set-key "\C-x\C-k" 'kill-region)
;;(global-set-key "\C-c\C-k" 'kill-region)

;; Swap between light and dark theme
(defun load-light-theme () (interactive) (disable-theme 'zenburn))
(defun load-dark-theme () (interactive) (load-theme 'zenburn t))
(global-set-key (kbd "C-x l") 'load-light-theme)
(global-set-key (kbd "C-x d") 'load-dark-theme)

;; Use command key instead of meta for some difficult-to-reach combos
(global-set-key (kbd "s-<") 'beginning-of-buffer)
(global-set-key (kbd "s->") 'end-of-buffer)
(global-set-key (kbd "s-d") 'kill-word)
(global-set-key (kbd "s-w") 'kill-ring-save)
(global-set-key (kbd "<s-backspace>") 'backward-kill-word)
(global-set-key (kbd "s-m") 'back-to-indentation)
