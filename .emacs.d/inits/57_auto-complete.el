;; regular auto-complete initialization
(require 'auto-complete-config)
(setq ac-config-default t)
;; add the emacs-eclim source
(require 'ac-emacs-eclim)
(ac-emacs-eclim-config)

;; for company-mode
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
