$init_repo_path = "C:\Users\ryanh\Documents\GitHub\dotfiles\emacs\.emacs.d\init.el"
$init_appdata_path = "C:\Users\ryanh\AppData\Roaming\.emacs.d\init.el"

if (Test-Path C:\Users\ryanh\AppData\Roaming\.emacs.d\init.el) {
	Remove-Item $init_appdata_path
	Copy-Item $init_repo_path $init_appdata_path
} else {
	Copy-Item $init_repo_path $init_appdata_path
}
