(defun bb/setup-term-mode ()
  (evil-local-set-key 'insert (kbd "C-l") 'bb/send-C-l)
  (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r))

(defun bb/send-C-l ()
  (interactive)
  (term-send-raw-string "\C-l"))

(defun bb/send-C-r ()
  (interactive)
  (term-send-raw-string "\C-r"))

(add-hook 'term-mode-hook 'bb/setup-term-mode)
(provide 'my-key)
