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

;; anzu-mode
(global-anzu-mode 1)

;; flycheck
(add-hook 'ruby-mode-hook
  (lambda ()
    (setq-local flycheck-command-wrapper-function
                (lambda (command) (append '("bundle" "exec") command)))))
(add-hook 'enh-ruby-mode-hook
  (lambda ()
    (setq-local flycheck-command-wrapper-function
                (lambda (command) (append '("bundle" "exec") command)))))
(exec-path-from-shell-initialize)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; ruby
(setq ruby-insert-encoding-magic-comment nil)
(setq enh-ruby-add-encoding-comment-on-save nil)
(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

;; prettier
;;(add-hook 'after-init-hook #'global-prettier-mode)
;; Now enabled via .dir-locals.el

;; indent
(setq js-indent-level 2)
