(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq-default tab-width 4)
(setq-default indent-tabs-mode t)

(setq column-number-mode t)
(global-display-line-numbers-mode)

(setq inhibit-splash-screen t)                     ;; Startup Screen
(setq make-backup-files nil)
(setq backward-delete-char-untabify-method nil)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(set-default 'truncate-line t)
(global-visual-line-mode t)
(windmove-default-keybindings)                             ;; Adds Window Switching Keybindings
(add-hook 'window-setup-hook 'toggle-frame-maximized t)    ;; Maximizes Window

(setq c-default-style "linux")
(setq c-basic-offset 4)

(setq org-todo-keywords
		'((sequence "TODO" "IN-PROGRESS" "|" "DONE")
		  (sequence "BUG" "|" "FIXED")
		  )
		)

(setq org-src-preserve-indentation t
    org-edit-src-content-indentation '0)

;; Something
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-t"))

(global-unset-key (kbd "C-n"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "M-<"))
(global-unset-key (kbd "M->"))
(global-unset-key (kbd "C-<prior>"))
(global-unset-key (kbd "C-<next>"))

(global-set-key (kbd "C-<prior>") 'beginning-of-buffer)
(global-set-key (kbd "C-<next>") 'end-of-buffer)

(define-prefix-command 'tabs-map)
(global-set-key (kbd "C-t") 'tabs-map)

(global-unset-key (kbd "C-x t o"))
(global-unset-key (kbd "C-x t O"))
(global-unset-key (kbd "C-x t u"))

(global-set-key (kbd "C-t t") 'tab-new)
(global-set-key (kbd "C-t w") 'tab-close)
(global-set-key (kbd "C-t W") 'tab-close-other)
(global-set-key (kbd "C-t u") 'tab-undo)

(define-prefix-command 'vcs-map)
(global-set-key (kbd "C-v") 'vcs-map)

(global-unset-key (kbd "C-x v v"))
(global-unset-key (kbd "C-x v +"))
(global-unset-key (kbd "C-x v P"))

(global-set-key (kbd "C-v v") 'vc-next-action)
(global-set-key (kbd "C-v p") 'vc-push)
(global-set-key (kbd "C-v P") 'vc-update)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
 '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" default))
 '(package-selected-packages
 '(toc-org csharp-mode yascroll vimrc-mode elcord gruvbox-theme)))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   )
