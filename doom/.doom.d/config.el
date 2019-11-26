;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
 doom-theme 'doom-peacock
 +workspaces-on-switch-project-behavior nil)

;; dired
(map! :leader
      :prefix "d"
      "d" #'dired
      "w" #'dired-other-window
      "p" #'projectile-dired-other-window)

(after! dired
  (map! :map dired-mode-map
        :n "h" #'dired-up-directory
        :n "l" #'dired-find-alternate-file
        :nv "u" #'dired-unmark
        :n "<tab>" #'dired-subtree-toggle
        :n "<C-tab>" #'dired-subtree-remove
        :n "<backtab>" #'dired-subtree-cycle))

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
        org-refile-targets '((org-agenda-files :maxlevel . 3))
        org-agenda-files (list org-directory)
        org-agenda-span (quote month)
        org-refile-allow-creating-parent-nodes 'confirm
        org-archive-location (concat org-directory "/archive.org::")))


;; (after! treemacs
;;   (setq doom-themes-treemacs-theme "doom-colors"
;;         treemacs-is-never-other-window nil
;;         treemacs-follow-mode t))
