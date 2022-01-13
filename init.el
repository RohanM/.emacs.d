(load (expand-file-name "better-defaults.el" user-emacs-directory))
(load (expand-file-name "keys.el" user-emacs-directory))
(load (expand-file-name "packages.el" user-emacs-directory))


;; Override some better-defaults
(setq mouse-yank-at-point nil)
(setq visible-bell nil)

;; Disable splash screen
(setq inhibit-startup-message t)

;; Scroll fewer lines at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2) ;; keyboard scroll one line at a time

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

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
