(load-theme 'wombat t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (git-link sass-mode projectile-rails haml-mode magit evil counsel ivy flycheck projectile undo-tree web-mode highlight-indentation robe command-log-mode evil-commentary zenburn-theme yaml-mode which-key use-package tide tabbar restclient pug-mode prettier-js npm-mode nlinum ng2-mode neotree golden-ratio git-timemachine general flx exec-path-from-shell evil-magit evil-escape diminish diff-hl counsel-projectile company benchmark-init all-the-icons add-node-modules-path))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-color-black ((t (:foreground "#3F3F3F"))))
 '(term-color-blue ((t (:foreground "SkyBlue2"))))
 '(term-color-cyan ((t (:foreground "cyan2"))))
 '(term-color-green ((t (:foreground "DarkOliveGreen2"))))
 '(term-color-magenta ((t (:foreground "#DC8CC3"))))
 '(term-color-red ((t (:foreground "OrangeRed2"))))
 '(term-color-white ((t (:foreground "#DCDCCC"))))
 '(term-color-yellow ((t (:foreground "khaki2"))))
 '(term-default-bg-color ((t (:inherit term-color-black))))
 '(term-default-fg-color ((t (:inherit term-color-white)))))

(use-layers '(git rails web))

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark)) ;; assuming you are using a dark theme

(defvar ns-use-proxy-icon nil)
(setq frame-title-format nil)
