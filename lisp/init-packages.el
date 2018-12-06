(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("org" . "http://mirrrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)

(defvar my/packages '(evil
		      evil-leader
		      helm
		      company
		      yasnippet
		      yasnippet-snippets
		      eyebrowse
		      flycheck
		      window-numbering
		      org
		      realgud
		      auto-package-update))

(setq-default package-selected-packages my/packages)

(defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

;;Auto update
(auto-package-update-now)

;; Mysettings about package
(require 'realgud)
(global-evil-leader-mode)
(evil-mode t)
(global-company-mode t)
(eyebrowse-mode t)
(yas-global-mode t)
(global-flycheck-mode t)
(window-numbering-mode t)
(helm-mode t)

;; About company
(setq-default
 company-show-numbers t)

;; About realgud
(setq-default
 realgud-safe-mode nil)

(provide 'init-packages)
