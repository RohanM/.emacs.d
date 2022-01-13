(load (expand-file-name "better-defaults.el" user-emacs-directory))
(load (expand-file-name "keys.el" user-emacs-directory))
(load (expand-file-name "packages.el" user-emacs-directory))
(load (expand-file-name "package-setup.el" user-emacs-directory))


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

;; Warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Display file size
(size-indication-mode t)
