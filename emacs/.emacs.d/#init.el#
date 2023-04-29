;  _______ _____  __  __ __   __        _  _   _       ______                             _____             __ _       
; |__   __|  __ \|  \/  /_ | / /    /\ | || | ( )     |  ____|                           / ____|           / _(_)      
;    | |  | |__) | \  / || |/ /_   /  \| || |_|/ ___  | |__   _ __ ___   __ _  ___ ___  | |     ___  _ __ | |_ _  __ _ 
;    | |  |  ___/| |\/| || | '_ \ / /\ \__   _| / __| |  __| | '_ ` _ \ / _` |/ __/ __| | |    / _ \| '_ \|  _| |/ _` |
;    | |  | |    | |  | || | (_) / ____ \ | |   \__ \ | |____| | | | | | (_| | (__\__ \ | |___| (_) | | | | | | | (_| |
;    |_|  |_|    |_|  |_||_|\___/_/    \_\|_|   |___/ |______|_| |_| |_|\__,_|\___|___/  \_____\___/|_| |_|_| |_|\__, |
;                                                                                                                 __/ |
;                                                                                                                |___/ 

; GitLab: https://gitlab.com/The-Tech-Lord/dotfiles


; ---------------------------------------------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" default))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages '(projectile gruvbox-theme dash))
 '(tab-always-indent 'complete))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
; ---------------------------------------------------------------------------------------------------------------

; ------------------------------------------------- Package List ------------------------------------------------
(setq package-list
      '(gruvbox-theme elcord))

(package-initialize)
; ---------------------------------------------------------------------------------------------------------------

; ---------------------------------------------------- General --------------------------------------------------
(setq inhibit-startup-message t)
(global-linum-mode t)
(setq column-number-mode t)
(set-default 'truncate-lines t)
(windmove-default-keybindings)

; Tabs
(setq-default tab-width 4)

; Elcord (Emacs Discord Escence)
(require 'elcord)
(elcord-mode)

; ---------------------------------------------------------------------------------------------------------------
(put 'scroll-left 'disabled nil)
