;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
 doom-theme 'doom-peacock
 +workspaces-on-switch-project-behavior nil)

(use-package! golden-ratio
  :init
  (golden-ratio-mode 1)
  :config
  (setq golden-ratio-extra-commands
        (append golden-ratio-extra-commands
                '(evil-window-left
                  evil-window-right
                  evil-window-up
                  evil-window-down
                  select-window-1
                  select-window-2
                  select-window-3
                  select-window-4
                  select-window-5))))

(after! org
  (setq org-directory "~/Sync/org"
        org-archive-location (concat org-directory "/archive.org::")))

(map! :map dired-mode-map
      :n "h" 'dired-up-directory
      :n "l" 'dired-find-alternate-file)

(append (quote ("i" "Inbox" plain (file "~/org/inbox.org") "")) org-capture-templates)

(after! treemacs
  (setq doom-themes-treemacs-theme "doom-colors"))
