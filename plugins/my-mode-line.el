(spaceline-define-segment my-datetime
  (shell-command-to-string "echo -n $(date '+%a %d %b %I:%M%p')"))
(spaceline-toggle-my-datetime-on)

(spaceline-define-segment my-file-path
  ;; (length projectile-project-root))
  (file-relative-name buffer-file-name (projectile-project-root)))
(spaceline-toggle-my-file-path-on)

(spaceline-toggle-point-position-on)

(spaceline-compile
    ; left side
    '(((persp-name
        workspace-number
        window-number)
       :fallback evil-state
       :face highlight-face
       :priority 100)
      (anzu :priority 95)
      auto-compile
      (my-file-path line-column point-position)
      ;; ((buffer-modified buffer-size buffer-id remote-host)
       ;; :priority 98)
      (major-mode :priority 79)
      (process :when active)
      ((flycheck-error flycheck-warning flycheck-info)
       :when active
       :priority 89)
      (minor-modes :when active
                   :priority 9)
      (mu4e-alert-segment :when active)
      (erc-track :when active)
      (version-control :when active
                       :priority 78)
      (org-pomodoro :when active)
      (org-clock :when active)
      nyan-cat)
    ; right side
    '(which-function
      (my-datetime)
      (python-pyvenv :fallback python-pyenv)
      (purpose :priority 94)
      (battery :when active)
      (selection-info :priority 95)
      input-method
      ;; ((buffer-encoding-abbrev
      ;;   point-position
      ;;   line-column)
      ;;  :separator " | "
      ;;  :priority 96)
      (global :when active)
      (buffer-position :priority 99)
      (hud :priority 99)))

(provide 'my-mode-line)
