if (Test-Path C:\Users\ryanh\AppData\Roaming\.emacs.d\init.el) {
	Remove-Item 'C:\Users\ryanh\AppData\Roaming\.emacs.d\init.el'
	Copy-Item 'C:\Users\ryanh\Documents\GitHub\dotfiles\emacs\.emacs.d\init.el' 'C:\Users\ryanh\AppData\Roaming\.emacs.d\init.el'
} else {
	Copy-Item 'C:\Users\ryanh\Documents\GitHub\dotfiles\emacs\.emacs.d\init.el' 'C:\Users\ryanh\AppData\Roaming\.emacs.d\init.el'
}
