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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(ggtags projectile realgud boon which-key use-package smex flx counsel)))
 '(safe-local-variable-values
   (quote
	((company-clang-arguments "-target" "i686-pc-windows-gnu" "-include" "c:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Workspace/UnitTestsCMake/UnitTestGlobal.h" "-Ic:/mingw/lib/gcc/mingw32/6.3.0/include/c++" "-Ic:/mingw/lib/gcc/mingw32/6.3.0/include/c++/mingw32" "-Ic:/mingw/lib/gcc/mingw32/6.3.0/include/c++/backward" "-Ic:/mingw/lib/gcc/mingw32/6.3.0/include" "-Ic:/mingw/include" "-Ic:/mingw/lib/gcc/mingw32/6.3.0/include-fixed" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/ExternalSources" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/ExternalSources/CoSeMa" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/GeneratedSources/Cds/Components" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/AdaptionLayer" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/ExternalSources" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/Manager" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel/Import/sercoshwmanager/Sources/Platform" "-IC:/pcrt_ext_motionkernel_ci/pcrt_ext_motionkernel")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
