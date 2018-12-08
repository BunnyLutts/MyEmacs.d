(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "wc" 'eyebrowse-create-window-config
  "wd" 'eyebrowse-close-window-config
  "wn" 'eyebrowse-next-window-config
  "wp" 'eyebrowse-prev-window-config
  "cn" 'flycheck-next-error
  "cp" 'flycheck-previous-error
  "rb" 'revert-buffer)

(provide 'init-keys)
