(require 'eclim)
(require 'eclimd)

;; java-mode で有効
(add-hook 'java-mode-hook 'eclim-mode)

(setq eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim")

;; エラー箇所にカーソルを当てるとエコーエリアに詳細を表示する
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)


;; java使うときはハードタブ
(add-hook 'java-mode-hook
          (lambda ()
            ;; 普通にタブ挿入する
            (setq indent-line-function 'tab-to-tab-stop)
            (setq tab-width 4)
            (setq indent-tabs-mode t)
            (setq c-basic-offset 4)            
          )
)


