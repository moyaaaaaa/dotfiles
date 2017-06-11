;; Ricty フォントの利用
(create-fontset-from-ascii-font "Ricty Diminished Discord-16:weight=normal:slant=normal" nil "ricty")
(set-fontset-font "fontset-ricty"
                  'unicode
                  (font-spec :family "Ricty_Diminished_Discord" :size 16)
                  nil
                  'append)
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))
