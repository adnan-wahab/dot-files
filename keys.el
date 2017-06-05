;;(global-set-key (kbd "C-x C-c") 'previous-buffer)
;;(global-set-key "\C-c\C-v" 'end-of-buffer)
;;(global-set-key "\C-c\M-v" 'beginning-of-buffer)
;(global-set-key (kbd "C-c o"))

(global-set-key (kbd "C-c u") 'swiper-all)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key  (kbd "C-c <SPC>") 'eshell)


(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c C-c") 'org-capture)

(global-set-key "\C-x\C-k" 'kill-region)

(global-set-key "\C-h" 'forward-char)
(global-set-key "\M-h" 'forward-word)
(global-set-key (kbd "M-f") 'mark-defun)

(global-set-key (kbd "C-x C-b") 'counsel-bookmark)
(global-set-key (kbd "C-x g") 'counsel-ag)
;;(global-set-key "\C-g" 'forward-char)
;;(global-set-key "\M-g" 'forward-word)

;;(global-unset-key (kbd "C-f"))
;;(global-unset-key (kbd "M-f"))
;;(global-unset-key (kbd "C-x DEL"))
;;(global-unset-key (kbd "C-x C-k"))
;;(global-unset-key (kbd "C-x C-b"))
(global-unset-key (kbd "C-x C-c"))


(global-set-key (kbd "C-'") 'previous-buffer)
(global-set-key (kbd "C-,") 'next-buffer)
(global-set-key (kbd "C-f") 'ace-window)

;; (global-set-key "\M-k" '(lambda () (interactive) (kill-line 0)))
(global-set-key (kbd "C-`") 'replace-regexp)

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(global-set-key (kbd "M-/") 'hippie-expand)
;; (global-set-key (kbd "C-<TAB>") 'execute-extended-command)
;;(global-set-key (kbd "\C-;") 'occur)

;; counsel-set-variable

(global-set-key "\C-w" 'backward-kill-word-or-kill-region)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key "\C-a" 'smart-line-beginning)


(with-eval-after-load 'evil
  (define-key evil-emacs-state-map (kbd "C-z") nil)
  (global-unset-key (kbd "C-z"))
  (global-set-key (kbd "C-z a") 'apropos)
  (global-set-key (kbd "C-z k") 'describe-key)
  (global-set-key (kbd "C-z b") 'counsel-descbinds)
  (global-set-key (kbd "C-z .") 'view-local-help)
  (global-set-key (kbd "C-z v") 'counsel-describe-variable)
  ;; (global-set-key (kbd "C-z m") 'describe-mode)
  (global-set-key (kbd "C-z f") 'counsel-describe-function)
  )
