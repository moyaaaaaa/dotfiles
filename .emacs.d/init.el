;; ~/.emacs.d/site-lisp 以下全部読み込み
(package-initialize)
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)
  )
 )

;; initsディレクトリ以下の設定ファイルを読み込む
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (browse-kill-ring multi-term company-emacs-eclim auto-complete package-utils ac-emacs-eclim eclim web-mode use-package smex smartparens redo+ realgud projectile prodigy popwin pallet package+ nyan-mode multiple-cursors meghanada magit init-loader idle-highlight-mode hydra htmlize helm google-c-style flycheck-cask expand-region exec-path-from-shell ensime elscreen drag-stuff cursor-chg autodisass-java-bytecode)))
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#dddd00"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
