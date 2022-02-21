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

;; Paragraph navigation
(global-set-key (kbd "M-<up>") 'backward-paragraph)
(global-set-key (kbd "M-<down>") 'forward-paragraph)
