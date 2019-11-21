;;(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

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
