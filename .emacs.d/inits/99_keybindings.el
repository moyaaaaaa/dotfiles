;; C-←↓↑→でフレーム移動
(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<down>")  'windmove-down)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<right>") 'windmove-right)


(when (eq system-type 'darwin)
  ;; commandキーをメタキーとして割り当てる
  (setq mac-command-modifier 'meta)

  ;; optionをメタキーにする
  (setq mac-option-modifier 'meta)

 )
