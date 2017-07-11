;; C-←↓↑→でフレーム移動
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

(global-set-key (kbd "C-<left>")  'windmove-left)
(global-set-key (kbd "C-<down>")  'windmove-down)
(global-set-key (kbd "C-<up>")    'windmove-up)
(global-set-key (kbd "C-<right>") 'windmove-right)


(when (eq system-type 'darwin)
  ;; commandキーをメタキーとして割り当てる
  (setq mac-command-modifier 'meta)

  ;; optionをメタキーにする
  (setq mac-option-modifier 'meta)

  ;; optionキーのmeta化をオフ
  ;; (setq mac-option-key-is-meta nil)

  ;; ¥の代わりにバックスラッシュを入力
  (define-key global-map [?¥] [?\\])

 )

;; meghanada設定
;; (global-set-key (kbd "M-.") 'meghanada-jump-declaration)


;; C-zでemacsをサスペンドする（CUI用）
(global-set-key (kbd "C-z") 'suspend-emacs)


;; eclim用設定
(define-key eclim-mode-map (kbd "C-c C-e p q") 'eclim-problems)
(define-key eclim-mode-map (kbd "C-c C-e p o") 'eclim-problems-open)
(define-key eclim-mode-map (kbd "C-c C-e p n") 'eclim-problems-next)
(define-key eclim-mode-map (kbd "C-c C-e p p") 'eclim-problems-previous)
;; Re-map `eclim-project-create' to C so that I can use c for
;; `eclim-problems-correct'
(define-key eclim-mode-map (kbd "C-c C-e p C") 'eclim-project-create)
(define-key eclim-mode-map (kbd "C-c C-e p c") 'eclim-problems-correct)
(define-key eclim-mode-map (kbd "M-.") 'eclim-java-find-declaration)
;; find-references = list-callers.
(define-key eclim-mode-map (kbd "C-c C-e l") 'eclim-java-find-references)
