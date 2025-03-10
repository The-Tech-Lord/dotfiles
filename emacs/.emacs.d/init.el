(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq package-selected-packages
 '(gruvbox-theme vimrc-mode))

(setq inhibit-splash-screen t)                     ;; Startup Screen
(load-theme 'gruvbox-dark-hard t)



(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(setq-default column-number-mode t)
(global-display-line-numbers-mode)

(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default backward-delete-char-untabify-method nil)

(setq-default make-backup-files nil)
(setq-default fill-column 140)

(custom-set-variables
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" default))
 )

(setq-default ls-lisp-dirs-first t)

(setq org-todo-keywords
		'((sequence "TODO(t)" "IN-PROGRESS(i!)" "NEAR-COMP(n!)" "|" "DONE(d!)" "INCOMPLETE(c!)" "OVERDUE(o!)" "NEVER-DID(e)")
		  (sequence "BUG(b)" "MINOR" "MAJOR" "|" "FIXED(f@!)" "HOTFIX(h@!)")
		  (sequence "Heh")))

(setq org-todo-keyword-faces
	  '(("TODO" . org-warning) ("IN-PROGRESS" . "yellow") ("NEAR-COMP" . "orange") ("DONE" . "green")
		("BUG" . org-warning) ("FIXED" . "green")))

(setq org-src-preserve-indentation t)
(setq org-edit-src-content-indentation '0)

(setq org-agenda-span 'month)

(setq org-priority-highest '?A)
(setq org-priority-lowest '?E)
(setq org-priority-default '?C)



(setq c-default-style "stroustrup")











(setq-default ispell-program-name "C:/msys64/mingw64/bin/aspell.exe")



(add-hook 'prog-mode-hook
		  (lambda()
			(flyspell-prog-mode)
			(company-mode)
			(eglot-ensure)))











(add-hook 'org-mode-hook
		  'turn-on-auto-fill)





(add-hook 'text-mode-hook
		  (lambda ()
			(flyspell-mode)
			(flyspell-buffer)))

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(global-unset-key (kbd "C-f"))    ;; forward-char
(global-unset-key (kbd "C-b"))    ;; backward-char
(global-unset-key (kbd "C-n"))    ;; next-line
(global-unset-key (kbd "C-p"))    ;; previous-line

(global-unset-key (kbd "M-f"))    ;; forward-word
(global-unset-key (kbd "M-b"))    ;; backward-word
(global-unset-key (kbd "ESC <left>"))    ;; backward-word

(global-unset-key (kbd "M-a"))    ;; backward-sentence
(global-unset-key (kbd "M-e"))    ;; forward-sentence

;; (global-unset-key (kbd "C-M-f"))    ;; forward-sexp
;; (global-unset-key (kbd "C-M-<right>"))    ;; forward-sexp
;; (global-unset-key (kbd "ESC C-<left>"))    ;; backward-sexp
;; (global-unset-key (kbd "ESC C-<right>"))    ;; forward-sexp
;; (global-unset-key (kbd "C-M-b"))    ;; backward-sexp
;; (global-unset-key (kbd "C-M-<left>"))    ;; backward-sexp

;; (global-unset-key (kbd "C-x ["))    ;; backward-page
;; (global-unset-key (kbd "C-x ]"))    ;; forward-page

;; (global-unset-key (kbd "C-M-a"))    ;; beginning-of-defun
;; (global-unset-key (kbd "C-M-<home>"))    ;; beginning-of-defun
;; (global-unset-key (kbd "ESC C-<home>"))    ;; beginning-of-defun
;; (global-unset-key (kbd "C-M-e"))    ;; end-of-defun
;; (global-unset-key (kbd "C-M-<end>"))    ;; end-of-defun
;; (global-unset-key (kbd "ESC C-<end>"))    ;; end-of-defun

(global-unset-key (kbd "M-m"))    ;; back-to-indentation
(global-unset-key (kbd "M-i"))    ;; tab-to-tab-stop

(global-unset-key (kbd "C-v"))    ;; scroll-up-command
(global-unset-key (kbd "M-v"))    ;; scroll-down-command

;; (global-unset-key (kbd "M-<"))    ;; beginning-of-buffer
;; (global-unset-key (kbd "C-<home>"))    ;; beginning-of-buffer
;; (global-unset-key (kbd "M->"))    ;; end-of-buffer
;; (global-unset-key (kbd "C-<end>"))    ;; end-of-buffer

;; (global-unset-key (kbd "C-M-v"))    ;; scroll-other-window
;; (global-unset-key (kbd "M-<next>"))    ;; scroll-other-window
;; (global-unset-key (kbd "ESC <next>"))    ;; scroll-other-window
;; (global-unset-key (kbd "C-M-S-v"))    ;; scroll-other-window-down
;; (global-unset-key (kbd "M-<prior>"))    ;; scroll-other-window-down
;; (global-unset-key (kbd "ESC <prior>"))    ;; scroll-other-window-down

;; (global-unset-key (kbd "M-<home>"))    ;; beginning-of-buffer-other-window
;; (global-unset-key (kbd "M-<begin>"))    ;; beginning-of-buffer-other-window
;; (global-unset-key (kbd "ESC <home>"))    ;; beginning-of-buffer-other-window
;; (global-unset-key (kbd "ESC <begin>"))    ;; beginning-of-buffer-other-window
;; (global-unset-key (kbd "M-<end>"))    ;; end-of-buffer-other-window
;; (global-unset-key (kbd "ESC <end>"))    ;; end-of-buffer-other-window

;; (global-unset-key (kbd "C-M-S-l"))    ;; recenter-other-window

;; (global-unset-key (kbd "C-x <"))    ;; scroll-left
;; (global-unset-key (kbd "C-<next>"))    ;; scroll-left
;; (global-unset-key (kbd "C-x >"))    ;; scroll-right
;; (global-unset-key (kbd "C-<prior>"))    ;; scroll-right

;; (global-unset-key (kbd "M-<wheel-up>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "S-<wheel-up>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "S-<wheel-down>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "S-<wheel-left>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "M-<wheel-down>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "M-<wheel-left>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "M-<wheel-right>"))    ;; mwheel-scroll
;; (global-unset-key (kbd "S-<wheel-right>"))    ;; mwheel-scroll

;; (global-unset-key (kbd "C-M-d"))    ;; down-list
;; (global-unset-key (kbd "C-M-<down>"))    ;; down-list
;; (global-unset-key (kbd "ESC C-<down>"))    ;; down-list
;; (global-unset-key (kbd "C-M-n"))    ;; forward-list
;; (global-unset-key (kbd "C-M-p"))    ;; backward-list
;; (global-unset-key (kbd "C-M-u"))    ;; backward-up-list
;; (global-unset-key (kbd "C-M-<up>"))    ;; backward-up-list
;; (global-unset-key (kbd "ESC C-<up>"))    ;; backward-up-list

;; (global-unset-key (kbd "M-r"))    ;; move-to-window-line-top-bottom
;; (global-unset-key (kbd "C-M-l"))    ;; reposition-window

;; (global-unset-key (kbd "M-g c"))    ;; goto-char
;; (global-unset-key (kbd "M-g g"))    ;; goto-line
;; (global-unset-key (kbd "M-g M-g"))    ;; goto-line
;; (global-unset-key (kbd "C-x n g"))    ;; goto-line-relative

;; (global-unset-key (kbd "M-g TAB"))    ;; move-to-column

(global-set-key (kbd "C-<right>") 'forward-word)
(global-set-key (kbd "C-<left>") 'backward-word)

(global-set-key (kbd "C-M-<right>") 'forward-sentence)
(global-set-key (kbd "C-M-<left>") 'backward-sentence)

(global-set-key (kbd "C-M-<down>") 'forward-paragraph)
(global-set-key (kbd "C-M-<up>") 'backward-paragraph)

(global-set-key (kbd "C-{") 'beginning-of-defun)
(global-set-key (kbd "C-}") 'end-of-defun)

(global-set-key (kbd "C-<") 'back-to-indentation)
(global-set-key (kbd "C->") 'tab-to-tab-stop)

(global-set-key (kbd "C-S-k") 'up-list)
(global-set-key (kbd "C-S-j") 'backward-up-list)
(global-set-key (kbd "C-S-l") 'forward-list)
(global-set-key (kbd "C-S-h") 'backward-list)

(global-set-key (kbd "C-S-b") 'beginning-of-buffer)
(global-set-key (kbd "C-S-n") 'end-of-buffer)

(global-unset-key (kbd "M-w"))    ;; kill-ring-save
(global-unset-key (kbd "C-<insert>"))    ;; kill-ring-save
(global-unset-key (kbd "C-<insertchar>"))    ;; kill-ring-save
(global-unset-key (kbd "C-M-w"))    ;; append-next-kill

(global-unset-key (kbd "C-w"))    ;; kill-region
(global-unset-key (kbd "S-<delete>"))    ;; kill-region

(global-unset-key (kbd "M-d"))    ;; kill-word
(global-unset-key (kbd "M-DEL"))    ;; backward-kill-word

(global-unset-key (kbd "M-k"))    ;; kill-sentence
(global-unset-key (kbd "C-DEL"))    ;; backward-kill-sentence
(global-unset-key (kbd "C-x DEL"))    ;; backward-kill-sentence
(global-unset-key (kbd "C-S-<backspace>"))    ;; kill-whole-line
(global-unset-key (kbd "M-z"))    ;; zap-to-char

(global-unset-key (kbd "C-M-k"))    ;; kill-sexp
(global-unset-key (kbd "ESC C-<delete>"))    ;; backward-kill-sexp
(global-unset-key (kbd "ESC C-<backspace>"))    ;; backward-kill-sexp

(global-unset-key (kbd "C-y"))    ;; yank
(global-unset-key (kbd "S-<insert>"))    ;; yank
(global-unset-key (kbd "S-<insertchar>"))    ;; yank
(global-unset-key (kbd "M-y"))   ;; yank-pop

(global-unset-key (kbd "C-_"))    ;; undo
(global-unset-key (kbd "C-x u"))    ;; undo
(global-unset-key (kbd "C-M-_"))    ;; undo-redo

(global-unset-key (kbd "C-d"))    ;; delete-char

(global-unset-key (kbd "M-^"))    ;; delete-indentation
(global-unset-key (kbd "M-\\"))    ;; delete-horizontal-space
(global-unset-key (kbd "C-x C-o"))    ;; delete-blank-lines
(global-unset-key (kbd "M-SPC"))    ;; just-one-space

(global-unset-key (kbd "M-<down-mouse-1>"))    ;; mouse-drag-secondary
(global-unset-key (kbd "M-<drag-mouse-1>"))    ;; mouse-set-secondary
(global-unset-key (kbd "M-<mouse-1>"))    ;; mouse-start-secondary
(global-unset-key (kbd "M-<mouse-2>"))    ;; mouse-yank-secondary
(global-unset-key (kbd "M-<mouse-3>"))    ;; mouse-secondary-save-then-kill

(global-set-key (kbd "M-/") 'kill-ring-save)
(global-set-key (kbd "C-M-/") 'append-next-kill)

(global-set-key (kbd "M-.") 'kill-region)

;(global-set-key (kbd "C-M-h") 'backward-kill-word)
;(global-set-key (kbd "C-M-j") 'kill-word)

(global-set-key (kbd "C-M-k") 'backward-kill-sentence)
(global-set-key (kbd "C-M-l") 'kill-sentence)
(global-set-key (kbd "C-M-n") 'kill-whole-line)

(global-set-key (kbd "M-;") 'yank)
(global-set-key (kbd "M-'") 'yank-pop)

(global-set-key (kbd "C-M-y") 'delete-indentation)
(global-set-key (kbd "C-M-u") 'delete-horizontal-space)
(global-set-key (kbd "C-M-b") 'delete-blank-lines)
(global-set-key (kbd "C-M-p") 'just-one-space)

(define-prefix-command 'mark-prfx)
(global-set-key (kbd "M-SPC") 'mark-prfx)

(global-unset-key (kbd "C-@"))    ;; set-mark-command
(global-unset-key (kbd "C-x C-x"))    ;; exchange-point-and-mark

(global-unset-key (kbd "M-@"))    ;; mark-word
(global-unset-key (kbd "C-M-h"))    ;; mark-defun
(global-unset-key (kbd "C-x h"))    ;; mark-whole-buffer
(global-unset-key (kbd "C-x C-p"))    ;; mark-page

(global-unset-key (kbd "C-M-@"))    ;; mark-sexp
(global-unset-key (kbd "C-M-SPC"))    ;; mark-sexp

(global-unset-key (kbd "M-,"))    ;; xref-pop-marker-stack
(global-unset-key (kbd "C-x C-@"))    ;; pop-global-mark
(global-unset-key (kbd "C-x C-SPC"))    ;; pop-global-mark

(global-set-key (kbd "M-SPC M-SPC") 'exchange-point-and-mark)

(global-set-key (kbd "M-SPC w") 'mark-word)
(global-set-key (kbd "M-SPC d") 'mark-defun)
(global-set-key (kbd "M-SPC C-a") 'mark-whole-buffer)

(global-set-key (kbd "M-SPC s") 'mark-sexp)

(global-set-key (kbd "M-SPC x") 'xref-pop-marker-stack)
(global-set-key (kbd "M-SPC p") 'pop-global-mark)

(global-unset-key (kbd "C-x SPC"))    ;; rectangle-mark-mode

(global-unset-key (kbd "C-x r y"))    ;; yank-rectangle
(global-unset-key (kbd "C-x r k"))    ;; kill-rectangle

(global-unset-key (kbd "C-x r c"))    ;; clear-rectangle
(global-unset-key (kbd "C-x r o"))    ;; open-rectangle
(global-unset-key (kbd "C-x r t"))    ;; string-rectangle
(global-unset-key (kbd "C-x r d"))    ;; delete-rectangle

(global-unset-key (kbd "C-x r N"))    ;; rectangle-number-lines
(global-unset-key (kbd "C-x r r"))    ;; copy-rectangle-to-register

(global-set-key (kbd "C-M-SPC") 'rectangle-mark-mode)

(define-prefix-command 'search-prfx)
(global-set-key (kbd "M-s") 'search-prfx)

(global-unset-key (kbd "C-x C-v"))    ;; find-alternate-file
(global-unset-key (kbd "C-x C-r"))    ;; find-file-read-only

;;(global-unset-key (kbd "M-."))    ;; xref-find-definitions
(global-unset-key (kbd "M-?"))    ;; xref-find-references
(global-unset-key (kbd "C-M-."))    ;; xref-find-apropos

(global-unset-key (kbd "C-M-r"))    ;; isearch-backward-regexp
(global-unset-key (kbd "C-M-s"))    ;; isearch-forward-regexp

(global-unset-key (kbd "M-%"))    ;; query-replace
(global-unset-key (kbd "C-M-%"))    ;; query-replace-regexp

(global-set-key (kbd "M-s C-f") 'find-alternate-file)

(global-set-key (kbd "M-s ?") 'xref-find-definitions)
(global-set-key (kbd "M-s C-?") 'xref-find-references)

(global-set-key (kbd "M-s r") 'query-replace)
(global-set-key (kbd "M-s R") 'query-replace-regexp)

(define-prefix-command 'hi-prfx)
(global-set-key (kbd "M-l") 'hi-prfx)

(global-unset-key (kbd "M-s h ."))    ;; highlight-symbol-at-point
(global-unset-key (kbd "M-s h p"))    ;; highlight-phrase

(global-unset-key (kbd "M-s h r"))    ;; highlight-regexp
(global-unset-key (kbd "M-s h l"))    ;; highlight-lines-matching-regexp
(global-unset-key (kbd "M-s h u"))    ;; unhighlight-regexp

(global-unset-key (kbd "M-s h f"))    ;; hi-lock-find-patterns
(global-unset-key (kbd "M-s h w"))    ;; hi-lock-write-interactive-patterns

(global-set-key (kbd "M-l h") 'highlight-symbol-at-point)
(global-set-key (kbd "M-l p") 'highlight-phrase)

(global-set-key (kbd "M-l x") 'highlight-regexp)
(global-set-key (kbd "M-l l") 'highlight-lines-matching-regexp)
(global-set-key (kbd "M-l u") 'unhighlight-regexp)

(global-unset-key (kbd "C-M-o"))    ;; split-line

(global-unset-key (kbd "C-t"))    ;; transpose-chars
(global-unset-key (kbd "M-t"))    ;; transpose-words
(global-unset-key (kbd "C-x C-t"))    ;; transpose-lines

(global-unset-key (kbd "M-l"))    ;; downcase-word
(global-unset-key (kbd "M-u"))    ;; upcase-word
(global-unset-key (kbd "M-c"))    ;; capitalize-word

(global-unset-key (kbd "C-x C-l"))    ;; downcase-region
(global-unset-key (kbd "C-x C-u"))    ;; upcase-region

(global-set-key (kbd "C-x C-r") 'transpose-chars)
(global-set-key (kbd "C-x C-t") 'transpose-words)
(global-set-key (kbd "C-x C-y") 'transpose-lines)
(global-set-key (kbd "C-x C-u") 'transpose-sentences)

(define-prefix-command 'indent-prfx)
(global-set-key (kbd "M-i") 'indent-prfx)

(global-unset-key (kbd "M-j"))    ;; default-indent-new-line
(global-unset-key (kbd "C-M-j"))    ;; default-indent-new-line

(global-unset-key (kbd "C-x TAB"))    ;; indent-rigidly
(global-unset-key (kbd "C-M-\\"))    ;; indent-region
(global-unset-key (kbd "M-)"))    ;; move-past-close-and-reindent

(global-set-key (kbd "M-i RET") 'default-indent-new-line)

(global-set-key (kbd "M-i TAB") 'indent-rigidly)
(global-set-key (kbd "M-i r") 'indent-region)
(global-set-key (kbd "M-i c") 'move-past-close-and-reindent)

(global-unset-key (kbd "C-x ;"))    ;; comment-set-column
;;(global-unset-key (kbd "M-;"))    ;; comment-dwim

(global-set-key (kbd "C-x ;") 'comment-dwim)

(global-unset-key (kbd "C-q"))    ;; quoted-insert
(global-unset-key (kbd "C-x C-d"))    ;; list-directory

(define-prefix-command 'frames-prfx)
(global-set-key (kbd "C-f") 'frames-prfx)

(global-unset-key (kbd "M-<f10>"))    ;; toggle-frame-maximized
(global-unset-key (kbd "ESC <f10>"))    ;; toggle-frame-maximized

(global-unset-key (kbd "C-x 5 2"))    ;; make-frame-command
(global-unset-key (kbd "C-x 5 c"))    ;; clone-frame

(global-unset-key (kbd "C-x 5 0"))    ;; delete-frame
(global-unset-key (kbd "C-x 5 1"))    ;; delete-other-frames

(global-unset-key (kbd "C-z"))    ;; suspend-frame
(global-unset-key (kbd "C-x z"))    ;; suspend-frame
(global-unset-key (kbd "C-x C-z"))    ;; suspend-frame

(global-unset-key (kbd "C-x 5 5"))    ;; other-frame-prefix
(global-unset-key (kbd "C-x 5 C-o"))    ;; display-buffer-other-frame
(global-unset-key (kbd "C-x 5 m"))    ;; compose-mail-other-frame
(global-unset-key (kbd "C-x 5 p"))    ;; project-other-frame-command
(global-unset-key (kbd "C-<drag-n-drop>"))    ;; w32-drag-n-drop-other-frame

(global-unset-key (kbd "C-x 5 o"))    ;; other-frame
(global-unset-key (kbd "C-x 5 b"))    ;; switch-to-buffer-other-frame

(global-unset-key (kbd "C-x 5 C-f"))    ;; find-file-other-frame
(global-unset-key (kbd "C-x 5 ."))    ;; xref-find-definitions-other-frame
(global-unset-key (kbd "C-x 5 f"))    ;; find-file-other-frame
(global-unset-key (kbd "C-x 5 r"))    ;; find-file-read-only-other-frame
(global-unset-key (kbd "C-x 5 d"))    ;; dired-other-frame

(global-set-key (kbd "C-f f") 'make-frame-command)
(global-set-key (kbd "C-f F") 'clone-frame)

(global-set-key (kbd "C-f w") 'delete-frame)
(global-set-key (kbd "C-f 1") 'delete-other-frames)

(global-set-key (kbd "C-f 5") 'other-frame-prefix)
(global-set-key (kbd "C-f C-b") 'display-buffer-other-frame)

(global-set-key (kbd "C-f o") 'other-frame)
(global-set-key (kbd "C-f b") 'switch-to-buffer-other-frame)

(global-set-key (kbd "C-f C-f") 'find-file-other-frame)
(global-set-key (kbd "C-f d") 'dired-other-frame)

(windmove-default-keybindings)
(define-prefix-command 'windows-prfx)
(global-set-key (kbd "C-w") 'windows-prfx)

(global-unset-key (kbd "C-x +"))    ;; balance-windows
(global-unset-key (kbd "C-x ^"))    ;; enlarge-window
(global-unset-key (kbd "C-x }"))    ;; enlarge-window-horizontally
(global-unset-key (kbd "C-x {"))    ;; shrink-window-horizontally
(global-unset-key (kbd "C-x -"))    ;; shrink-window-if-larger-than-buffer

(global-unset-key (kbd "C-x 2"))    ;; split-window-below
(global-unset-key (kbd "C-x 3"))    ;; split-window-right

(global-unset-key (kbd "C-x 0"))    ;; delete-window
(global-unset-key (kbd "C-x 1"))    ;; delete-other-windows
(global-unset-key (kbd "C-x 4 0"))    ;; kill-buffer-and-window

(global-unset-key (kbd "C-x 4 4"))    ;; other-window-prefix
(global-unset-key (kbd "C-x 4 C-o"))    ;; display-buffer
(global-unset-key (kbd "C-x 4 c"))    ;; clone-indirect-buffer-other-window
(global-unset-key (kbd "C-x 4 a"))    ;; add-change-log-entry-other-window
(global-unset-key (kbd "C-x 4 m"))    ;; compose-mail-other-window
(global-unset-key (kbd "C-x 4 p"))    ;; project-other-window-command

(global-unset-key (kbd "C-x o"))    ;; other-window
(global-unset-key (kbd "C-x 4 b"))    ;; switch-to-buffer-other-window

(global-unset-key (kbd "C-x 4 C-f"))    ;; find-file-other-window
(global-unset-key (kbd "C-x 4 C-j"))    ;; dired-jump-other-window
(global-unset-key (kbd "C-x 4 ."))    ;; xref-find-definitions-other-window
(global-unset-key (kbd "C-x 4 d"))    ;; dired-other-window
(global-unset-key (kbd "C-x 4 f"))    ;; find-file-other-window
(global-unset-key (kbd "C-x 4 r"))    ;; find-file-read-only-other-window

(global-unset-key (kbd "C-x 4 1"))    ;; same-window-prefix

(global-unset-key (kbd "<f2>"))    ;; 2C-command
(global-unset-key (kbd "<f2> 2"))    ;; 2C-two-columns
(global-unset-key (kbd "<f2> b"))    ;; 2C-associate-buffer
(global-unset-key (kbd "<f2> s"))    ;; 2C-split
(global-unset-key (kbd "<f2> <f2>"))    ;; 2C-two-columns
(global-unset-key (kbd "C-x 6 2"))    ;; 2C-two-columns
(global-unset-key (kbd "C-x 6 b"))    ;; 2C-associate-buffer
(global-unset-key (kbd "C-x 6 s"))    ;; 2C-split
(global-unset-key (kbd "C-x 6 <f2>"))    ;; 2C-two-columns

(global-set-key (kbd "C-w =") 'balance-windows)
(global-set-key (kbd "C-w C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-w C-<up>") 'enlarge-window)
(global-set-key (kbd "C-w C-<right>") 'enlarge-window-horizontally)

(global-set-key (kbd "C-w [") 'split-window-below)
(global-set-key (kbd "C-w ]") 'split-window-right)

(global-set-key (kbd "C-w w") 'delete-window)
(global-set-key (kbd "C-w W") 'delete-other-windows)
(global-set-key (kbd "C-w C-w") 'kill-buffer-and-window)

(global-set-key (kbd "C-w b") 'display-buffer)

(global-set-key (kbd "C-w C-f") 'find-file-other-window)
(global-set-key (kbd "C-w C-d") 'dired-jump-other-window)
(global-set-key (kbd "C-w B") 'switch-to-buffer-other-window)
(global-set-key (kbd "C-w c") 'clone-indirect-buffer-other-window)
(global-set-key (kbd "C-w d") 'dired-other-window)

(global-set-key (kbd "C-w 4") 'same-window-prefix)

(define-prefix-command 'buffers-prfx)
(global-set-key (kbd "C-b") 'buffers-prfx)

(defun buffer-continous-switch()
  )

(global-unset-key (kbd "C-x b"))    ;; switch-to-buffer
(global-unset-key (kbd "C-x <right>"))    ;; next-buffer
(global-unset-key (kbd "C-x C-<right>"))    ;; next-buffer
(global-unset-key (kbd "C-x <left>"))    ;; previous-buffer
(global-unset-key (kbd "C-x C-<left>"))    ;; previous-buffer

;; (global-unset-key (kbd "C-x s"))    ;; save-some-buffers
;; (global-unset-key (kbd "C-x C-b"))    ;; list-buffers
;; (global-unset-key (kbd "C-x C-q"))    ;; read-only-mode

;; (global-unset-key (kbd "C-x x n"))    ;; clone-buffer

;; (global-unset-key (kbd "C-x k"))    ;; kill-buffer

(global-unset-key (kbd "C-x x g"))    ;; revert-buffer-quick
(global-unset-key (kbd "C-x x r"))    ;; rename-buffer
(global-unset-key (kbd "C-x x u"))    ;; rename-uniquely
(global-unset-key (kbd "C-x x i"))    ;; insert-buffer

(global-set-key (kbd "C-b C-<left>") 'previous-buffer)
(global-set-key (kbd "C-b C-<right>") 'next-buffer)

(global-set-key (kbd "C-b s") 'save-some-buffers)
(global-set-key (kbd "C-b l") 'list-buffers)

(global-set-key (kbd "C-b k") 'kill-buffer)
(global-set-key (kbd "C-b x") 'save-buffers-kill-terminal)

(define-prefix-command 'tabs-prfx)
(global-set-key (kbd "C-t") 'tabs-prfx)

;; (global-unset-key (kbd "C-x t G"))    ;; tab-group
;; (global-unset-key (kbd "C-x t r"))    ;; tab-rename

;; (global-unset-key (kbd "C-x t 2"))    ;; tab-new
;; (global-unset-key (kbd "C-x t n"))    ;; tab-duplicate

;; (global-unset-key (kbd "C-x t 0"))    ;; tab-close
;; (global-unset-key (kbd "C-x t 1"))    ;; tab-close-other

;; (global-unset-key (kbd "C-x t u"))    ;; tab-undo

;; (global-unset-key (kbd "C-x t o"))    ;; tab-next
;; (global-unset-key (kbd "C-x t O"))    ;; tab-previous

;; (global-unset-key (kbd "C-x t N"))      ;; tab-new-to
;; (global-unset-key (kbd "C-x t M"))      ;; tab-move-to
;; (global-unset-key (kbd "C-x t RET"))    ;; tab-switch
;; (global-unset-key (kbd "C-x t m"))      ;; tab-move

;; (global-unset-key (kbd "C-x t t"))    ;; other-tab-prefix
;; (global-unset-key (kbd "C-x t b"))    ;; switch-to-buffer-other-tab
;; (global-unset-key (kbd "C-x t p"))    ;; project-other-tab-command

;; (global-unset-key (kbd "C-x t C-f"))    ;; find-file-other-tab
;; (global-unset-key (kbd "C-x t f"))      ;; find-file-other-tab
;; (global-unset-key (kbd "C-x t C-r"))    ;; find-file-read-only-other-tab
;; (global-unset-key (kbd "C-x t d"))      ;; dired-other-tab

(global-set-key (kbd "C-t t") 'tab-new)
(global-set-key (kbd "C-t D") 'tab-duplicate)

(global-set-key (kbd "C-t w") 'tab-close)
(global-set-key (kbd "C-t W") 'tab-close-other)

(global-set-key (kbd "C-t u") 'tab-undo)

(global-set-key (kbd "C-t p") 'project-other-tab-command)

(global-set-key (kbd "C-t d") 'dired-other-tab)
(global-set-key (kbd "C-t C-f") 'find-file-other-tab)

(define-prefix-command 'vcs-prfx)
(global-set-key (kbd "C-v") 'vcs-prfx)

(global-unset-key (kbd "C-x v d"))    ;; vc-dir

(global-unset-key (kbd "C-x v i"))    ;; vc-register

(global-unset-key (kbd "C-x v v"))    ;; vc-next-action
(global-unset-key (kbd "C-x v +"))    ;; vc-update
(global-unset-key (kbd "C-x v P"))    ;; vc-push
(global-unset-key (kbd "C-x v m"))    ;; vc-merge
(global-unset-key (kbd "C-x v u"))    ;; vc-revert

(global-unset-key (kbd "C-x v G"))    ;; vc-ignore
(global-unset-key (kbd "C-x v x"))    ;; vc-delete-file

(global-unset-key (kbd "C-x v ="))    ;; vc-diff
(global-unset-key (kbd "C-x v D"))    ;; vc-root-diff
(global-unset-key (kbd "C-x v M D"))    ;; vc-diff-mergebase

(global-unset-key (kbd "C-x v l"))    ;; vc-print-log
(global-unset-key (kbd "C-x v L"))    ;; vc-print-root-log
(global-unset-key (kbd "C-x v O"))    ;; vc-log-outgoing
(global-unset-key (kbd "C-x v I"))    ;; vc-log-incoming
(global-unset-key (kbd "C-x v h"))    ;; vc-region-history
(global-unset-key (kbd "C-x v M L"))    ;; vc-log-mergebase
(global-unset-key (kbd "C-x v a"))    ;; vc-annotate
(global-unset-key (kbd "C-x v g"))    ;; vc-annotate
(global-unset-key (kbd "C-x v ~"))    ;; vc-revision-other-window

(global-unset-key (kbd "C-x v s"))    ;; vc-create-tag
(global-unset-key (kbd "C-x v r"))    ;; vc-retrieve-tag

(global-unset-key (kbd "C-x v b"))    ;; vc-switch-backend

(global-set-key (kbd "C-v d") 'vc-dir)

(global-set-key (kbd "C-v M-i") 'vc-register)

(global-set-key (kbd "C-v v") 'vc-next-action)
(global-set-key (kbd "C-v p") 'vc-push)
(global-set-key (kbd "C-v P") 'vc-update)
(global-set-key (kbd "C-v M") 'vc-merge)
(global-set-key (kbd "C-v U") 'vc-revert)

(global-set-key (kbd "C-v x") 'vc-ignore)
(global-set-key (kbd "C-v C-x") 'vc-delete-file)

(global-set-key (kbd "C-v D") 'vc-diff)
(global-set-key (kbd "C-v C-d") 'vc-root-diff)

(global-set-key (kbd "C-v C-p") 'vc-print-log)
(global-set-key (kbd "C-v C-l") 'vc-print-root-log)
(global-set-key (kbd "C-v l") 'vc-log-outgoing)
(global-set-key (kbd "C-v L") 'vc-log-incoming)
(global-set-key (kbd "C-v h") 'vc-region-history)
(global-set-key (kbd "C-v a") 'vc-annotate)
(global-set-key (kbd "C-v r") 'vc-revision-other-window)

(global-set-key (kbd "C-v t") 'vc-create-tag)
(global-set-key (kbd "C-v C-t") 'vc-retrieve-tag)

(define-prefix-command 'project-prfx)
(global-set-key (kbd "C-p") 'project-prfx)

(global-unset-key (kbd "C-x p D"))    ;; project-dired
(global-unset-key (kbd "C-x p v"))    ;; project-vc-dir
(global-unset-key (kbd "C-x p b"))    ;; project-switch-to-buffer
(global-unset-key (kbd "C-x p k"))    ;; project-kill-buffers
(global-unset-key (kbd "C-x p p"))    ;; project-switch-project

(global-unset-key (kbd "C-x p s"))    ;; project-shell
(global-unset-key (kbd "C-x p !"))    ;; project-shell-command
(global-unset-key (kbd "C-x p &"))    ;; project-async-shell-command
(global-unset-key (kbd "C-x p e"))    ;; project-eshell
(global-unset-key (kbd "C-x p x"))    ;; project-execute-extended-command
(global-unset-key (kbd "C-x p c"))    ;; project-compile

(global-unset-key (kbd "C-x p f"))    ;; project-find-file
(global-unset-key (kbd "C-x p g"))    ;; project-find-regexp
(global-unset-key (kbd "C-x p d"))    ;; project-find-dir
(global-unset-key (kbd "C-x p F"))    ;; project-or-external-find-file
(global-unset-key (kbd "C-x p G"))    ;; project-or-external-find-regexp
(global-unset-key (kbd "C-x p r"))    ;; project-query-replace-regexp

(global-set-key (kbd "C-p d") 'project-dired)
(global-set-key (kbd "C-p D") 'project-vc-dir)
(global-set-key (kbd "C-p b") 'project-switch-to-buffer)
(global-set-key (kbd "C-p C-k") 'project-kill-buffers)
(global-set-key (kbd "C-p p") 'project-switch-project)

(global-set-key (kbd "C-p s") 'project-shell)
(global-set-key (kbd "C-p S") 'project-shell-command)
(global-set-key (kbd "C-p C-s") 'project-async-shell-command)
(global-set-key (kbd "C-p e") 'project-eshell)
(global-set-key (kbd "C-p c") 'project-compile)

(global-set-key (kbd "C-p C-f") 'project-find-file)
(global-set-key (kbd "C-p g") 'project-find-regexp)
(global-set-key (kbd "C-p d") 'project-find-dir)
(global-set-key (kbd "C-p r") 'project-query-replace-regexp)

(global-unset-key (kbd "C-x `"))    ;; next-error
(global-unset-key (kbd "M-g M-n"))    ;; next-error
(global-unset-key (kbd "M-g n"))    ;; next-error
(global-unset-key (kbd "M-g M-p"))    ;; previous-error
(global-unset-key (kbd "M-g p"))    ;; previous-error





(global-unset-key (kbd "M-ESC ESC"))    ;; keyboard-escape-quit

(defun cc-hungry-delete()
  (local-unset-key (kbd "C-c DEL"))    ;; c-hungry-delete-backwards
  (local-unset-key (kbd "C-c C-DEL"))    ;; c-hungry-delete-backwards
  (local-unset-key (kbd "C-c C-<backspace>"))    ;; c-hungry-delete-backwards
  (local-unset-key (kbd "C-c C-<delete>"))    ;; c-hungry-delete-forward
  (local-unset-key (kbd "C-c C-<deletechar>"))    ;; c-hungry-delete-forward
  (local-unset-key (kbd "C-c <deletechar>"))    ;; c-hungry-delete-forward
  (local-unset-key (kbd "C-c C-d"))    ;; c-hungry-delete-forward
  (local-set-key (kbd "C-c C-f") 'c-hungry-delete-forward)
  (local-set-key (kbd "C-c C-b") 'c-hungry-delete-backwards)
  )

(defun cc-common-bindings()
  'cc-hungry-delete)









(define-prefix-command 'autofill-prfx)
(global-set-key (kbd "C-q") 'autofill-prfx)

(global-unset-key (kbd "C-x ."))    ;; set-fill-prefix
(global-unset-key (kbd "C-x f"))    ;; set-fill-column

(global-unset-key (kbd "M-q"))    ;; fill-paragraph

(global-set-key (kbd "C-q a") 'auto-fill-mode)

(global-set-key (kbd "C-q .") 'set-fill-prefix)
(global-set-key (kbd "C-q f") 'set-fill-column)

(global-set-key (kbd "C-q p") 'fill-paragraph)
(global-set-key (kbd "C-q r") 'fill-region)
(global-set-key (kbd "C-q P") 'fill-region-as-paragraph)
(global-set-key (kbd "C-q c") 'center-line)

(with-eval-after-load 'rect
  (define-key rectangle-mark-mode-map (kbd "C-o") nil)    ;; open-rectangle
  (define-key rectangle-mark-mode-map (kbd "C-t") nil))    ;; string-rectangle

(with-eval-after-load 'rect
  (define-key rectangle-mark-mode-map (kbd "k") 'kill-rectangle)
  (define-key rectangle-mark-mode-map (kbd "y") 'yank-rectangle)
  (define-key rectangle-mark-mode-map (kbd "c") 'clear-rectangle)
  (define-key rectangle-mark-mode-map (kbd "o") 'open-rectangle)
  (define-key rectangle-mark-mode-map (kbd "s") 'string-rectangle)
  (define-key rectangle-mark-mode-map (kbd "d") 'delete-rectangle)
  (define-key rectangle-mark-mode-map (kbd "R") 'copy-rectangle-to-register))

(define-prefix-command 'ammusements-prfx)
(global-set-key (kbd "C-`") 'ammusements-prfx)

(global-set-key (kbd "C-` b") 'blackbox)

(global-set-key (kbd "C-` m") 'mpuz)

(global-set-key (kbd "C-` B") 'bubbles)

(global-set-key (kbd "C-` d") 'decipher)

(global-set-key (kbd "C-` D") 'dissociated-press)

(global-set-key (kbd "C-` C-d") 'dunnet)

(global-set-key (kbd "C-` g") 'gomoku)

(global-set-key (kbd "C-` h") 'hanoi)

(global-set-key (kbd "C-` l") 'life)

(global-set-key (kbd "C-` M") 'morse-region)

(defun pong-controls-unbind()
  (local-unset-key (kbd "2"))    ;; pong-move-down
  (local-unset-key (kbd "4"))    ;; pong-move-left
  (local-unset-key (kbd "6"))    ;; pong-move-right
  (local-unset-key (kbd "8"))    ;; pong-move-up
  (local-unset-key (kbd "<down>"))    ;; pong-move-down
  (local-unset-key (kbd "<left>"))    ;; pong-move-left
  (local-unset-key (kbd "<right>"))    ;; pong-move-right
  (local-unset-key (kbd "<up>"))    ;; pong-move-up
  )

(global-set-key (kbd "C-` p") 'pong)

(defun pong-controls()
  (local-set-key (kbd "w") 'pong-move-left)
  (local-set-key (kbd "s") 'pong-move-right)
  (local-set-key (kbd "o") 'pong-move-up)
  (local-set-key (kbd "l") 'pong-move-down)
  )

(defun snake-controls-unbind()
  )

(global-set-key (kbd "C-` s") 'snake)

(defun snake-controls()
  )



(global-set-key (kbd "C-` t") 'tetris)

(defun tetris-controls()
  )

(global-set-key (kbd "C-` S") 'solitaire)

(global-set-key (kbd "C-` z") 'zone)

(global-set-key (kbd "C-` C-b") 'butterfly)

(global-set-key (kbd "C-` C-D") 'doctor)









































(define-minor-mode source-manager
  "Text"
  :init-value nil
  :lighter "Source"
  :keymaps
  '(([C-M-w] . split-window-below)
	)
  )













(define-minor-mode delta-mode
  "aaaaauuuuuuuggggghhhh"
  :init-value nil
  :lighter " Delta"
  :keymap
  '(([C-M-w] . split-window-below)
	)
  )

(define-minor-mode eleanor-mode
  "The Rapture dream is over, but in waking, I am reborn"
  :init-value nil
  :lighter " Eleanor"
  :keymap
  '(([C-M-w] . split-window-below)
	)
  )

(define-minor-mode jack-mode
  "I chose to batter that man with a golf club"
  :init-value nil
  :lighter " Jack"
  :keymap
  '(([C-M-w] . split-window-below)
	)
  )

(define-minor-mode atlas-mode
  "Would you kindly"
  :init-value nil
  :lighter " Atlas"
  :keymap
  '(([C-M w] . split-window-below)
	)
  )




