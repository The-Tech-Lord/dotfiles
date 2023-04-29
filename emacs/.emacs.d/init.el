;;  _______ _____  __  __ __   __        _  _   _       ______                             _____             __ _       
;; |__   __|  __ \|  \/  /_ | / /    /\ | || | ( )     |  ____|                           / ____|           / _(_)      
;;    | |  | |__) | \  / || |/ /_   /  \| || |_|/ ___  | |__   _ __ ___   __ _  ___ ___  | |     ___  _ __ | |_ _  __ _ 
;;    | |  |  ___/| |\/| || | '_ \ / /\ \__   _| / __| |  __| | '_ ` _ \ / _` |/ __/ __| | |    / _ \| '_ \|  _| |/ _` |
;;    | |  | |    | |  | || | (_) / ____ \ | |   \__ \ | |____| | | | | | (_| | (__\__ \ | |___| (_) | | | | | | | (_| |
;;    |_|  |_|    |_|  |_||_|\___/_/    \_\|_|   |___/ |______|_| |_| |_|\__,_|\___|___/  \_____\___/|_| |_|_| |_|\__, |
;;                                                                                                                 __/ |
;;                                                                                                                |___/ 

;; GitLab: https://gitlab.com/The-Tech-Lord/dotfiles

;; ========================================= + Melpa Package Manager + ==========================================

;; --------------------------------------------------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; --------------------------------------------------------------------------------------------------------------



;; ============================================= + Emacs Settings + =============================================

;; ---------------------------------------------- General Settings ----------------------------------------------
(setq inhibit-splash-screen t) ;; Startup Screen
(setq tab-width 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)

(setq column-number-mode t)
(set-default 'truncate-lines t)
(windmove-default-keybindings)

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(menu-bar-mode -1)
(tool-bar-mode -1)
;; --------------------------------------------------------------------------------------------------------------

;; ------------------------------- Language Specific Settings (Major/Minor Mode) --------------------------------
;; C Programming Configurations
(setq c-default-style "linux")
(setq c-basic-offset 4)

(setq backward-delete-char-untabify-method nil)
;; --------------------------------------------------------------------------------------------------------------



;; ============================================= + Key Mappings + ===============================================

;; ------------------------------------------- General Key Mappings ---------------------------------------------

;; --------------------------------------------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" default))
 '(package-selected-packages '(vimrc-mode elcord gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

