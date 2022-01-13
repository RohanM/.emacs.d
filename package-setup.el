;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C->") 'mc/mark-all-like-this)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(yas/load-directory "~/.emacs.d/snippets")
;;;; No dropdowns please, yas
;;(setq yas-prompt-functions '(yas-ido-prompt yas-completing-prompt))
;;;; No need to be so verbose
;;(setq yas-verbosity 1)
;;;; Wrap around region
;;(setq yas-wrap-around-region t)

;; line numbers
(if (fboundp 'global-display-line-numbers-mode)
    (global-display-line-numbers-mode)
  (global-nlinum-mode t))

;; diff-hl-mode (git diff)
(global-diff-hl-mode)
