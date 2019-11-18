;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
 doom-theme 'doom-peacock
 +workspaces-on-switch-project-behavior nil
 org-directory "~/Sync/org")

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

(map! :map bongo-playlist-mode-map
      :n "0"     'volume-minimize
      :n "_"     'volume-maximize
      :n "-"     'volume-lower-10
      :n "+"     'volume-raise-10
      :n "<tab>" 'bongo-toggle-collapsed
      :n "i"     'bongo-insert-directory
      :n ">"     'bongo-play-next
      :n "<"     'bongo-play-previous
      :n "dd"    'bongo-kill-line
      :v "d"     'bongo-kill-region
      :n "p"     'bongo-play)

(map! :localleader
      :map bongo-library-mode-map
      :desc "Insert Directory" "id" #'bongo-insert-directory)

(map! :localleader
      :map bongo-playlist-mode-map
      :desc "Insert Directory" "id" #'bongo-insert-directory
      :desc "Start/Stop"       "s" #'bongo-start/stop
      :desc "Play Song"        "p" #'bongo-play)

(map! :leader
      :desc "Start - Stop"  "abs" #'bongo-start/stop
      :desc "Show Playlist" "abp" #'bongo-playlist
      :desc "Show Library"  "abl" #'bongo-library
      :desc "Previous Song" "ab<" #'bongo-play-previous
      :desc "Next Song"     "ab>" #'bongo-play-next)

(after! bongo
  (setq bongo-default-directory "~/Music"
        bongo-logo nil
        bongo-prefer-library-buffers nil))

(after! treemacs
  (setq doom-themes-treemacs-theme "doom-colors"))
