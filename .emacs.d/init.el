;; ~/.emacs.d/site-lisp 以下全部読み込み
(package-initialize)
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;; initsディレクトリ以下の設定ファイルを読み込む
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

;; Caskの設定
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(require 'redo+)
(global-set-key (kbd "C-M-/") 'redo)

;; テーマ設定
(load-theme 'railscast t t)
(enable-theme 'railscast)
