;; Caskの設定
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(require 'redo+)
(global-set-key (kbd "C-_") 'undo)
(global-set-key (kbd "M-_") 'redo)

;; テーマ設定
(load-theme 'railscast t t)
(enable-theme 'railscast)


;; エディター系の設定
;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; バックアップファイルを作成させない
(setq make-backup-files nil)

;; 終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; 複数ウィンドウを禁止する
(setq ns-pop-up-frames nil)

;; メニューバーを消す
(menu-bar-mode -1)

;; ツールバーを消す
(tool-bar-mode -1)

;; 行数を表示
(global-linum-mode)

;; 列数を表示する
(column-number-mode t)

;; カーソルの点滅をやめる
(blink-cursor-mode 0)

;; カーソルの形状を変更
(require 'cursor-chg)
(setq curchg-default-cursor-type 'bar)
(change-cursor-mode 1)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; ウィンドウ内に収まらないときだけ、カッコ内も光らせる
;; (setq show-paren-style 'mixed)
;; (set-face-background 'show-paren-match-face "grey")
;; (set-face-foreground 'show-paren-match-face "black")

;; スクロールは１行ごとに
(setq scroll-conservatively 1)

;; C-kで行全体を削除する
(setq kill-whole-line t)

;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)

;; beep音を消す
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)

;; 括弧の自動挿入
(electric-pair-mode 1)

;; 改行とか括弧の後に自動でインデントを入れない
(electric-indent-mode -1)

;; ホイールでスクロールする行数を設定
(setq mouse-wheel-scroll-amount '(1 ((shift). 2) (controll)))

;; 行がはみ出しても折り返さない
(setq truncate-partial-width-windows nil)
