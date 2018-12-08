;; Let emacs close its mouth
(setq-default ring-bell-function 'ignore)
;; File auto revert
(global-auto-revert-mode t)
;; About delete
(delete-selection-mode t)
;; Show paren
(show-paren-mode t)

(provide 'init-editor)
