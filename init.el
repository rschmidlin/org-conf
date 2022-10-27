;;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
			 '("org" . "https://orgmode.org/elpa/"))
(package-initialize)

;; Bug fix for bad request on emacs below 27
(when (version<= emacs-version "27.0.50")
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

;; Avoid that package signing fails Elpa also reported as bug
;; because (474F05837FBDEF9B) is indeed not published
(setq package-check-signature nil)

;; Initialize proxy configuration
(load-file "~/.emacs.d/proxy_conf.el")

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Nextcloud/orgfiles")
 '(org-export-backends (quote (taskjuggler ascii html icalendar latex)))
 '(package-selected-packages
   (quote
	(keyfreq sr-speedbar ggtags web-mode groovy-mode company-jedi cmake-font-lock cmake-mode elisp-slime-nav elscreen smartparens symbol-overlay highlight-indent-guides aggressive-fill-paragraph aggressive-indent htmlize org-bullets org-plus-contrib projectile magit multiple-cursors crux string-inflection drag-stuff goto-line-preview expand-region visual-regexp undo-tree company-quickhelp company flycheck flyspell-correct-ivy dumb-jump deadgrep smex flx which-key delight use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(region ((t (:background "gold")))))
