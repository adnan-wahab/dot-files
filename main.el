(pdf-tools-install)

(setq-default
 backup-directory-alist `((".*" . ,temporary-file-directory))
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 backup-by-copying t
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 make-backup-files nil


 sp-highlight-pair-overlay nil
 sp-highlight-wrap-overlay nil
 sp-highlight-wrap-tag-overlay nil

 avy-all-windows 'all-frames

 )

(add-hook 'text-mode-hook 'auto-fill-mode)

(require 'smartparens)
(require 'counsel-dash)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'smartparens-mode)

(setq mac-option-modifier 'nil)
(setq mac-command-modifier 'meta)
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-default-smtp-server "smtp.gmail.com")





;; (setq org-todo-keywords
;;       '(
;;         (sequence "IDEA(i)" "TODO(t)" "STARTED(s)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)")
;;         (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)")
;;         ))

;; (setq org-todo-keyword-faces
;;       '(("IDEA" . (:foreground "GoldenRod" :weight bold))
;;         ("NEXT" . (:foreground "IndianRed1" :weight bold))   
;;         ("STARTED" . (:foreground "OrangeRed" :weight bold))
;;         ("WAITING" . (:foreground "IndianRed1" :weight bold)) 
;;         ("CANCELED" . (:foreground "LimeGreen" :weight bold))
;;         ("DELEGATED" . (:foreground "LimeGreen" :weight bold))
;;         ("SOMEDAY" . (:foreground "LimeGreen" :weight bold))
;;         ))

;; (setq org-tag-persistent-alist 
;;       '((:startgroup . nil)
;;         ("HOME" . ?h) 
;;         ("RESEARCH" . ?r)
;;         ("TEACHING" . ?t)
;;         (:endgroup . nil)
;;         (:startgroup . nil)
;;         ("OS" . ?o) 
;;         ("DEV" . ?d)
;;         ("WWW" . ?w)
;;         (:endgroup . nil)
;;         ("URGENT" . ?u)
;;         ("KEY" . ?k)
;;         ("HARD" . ?a)
;;         ("BONUS" . ?b)
;;         ("noexport" . ?x)  
;;         )
;;       )

;; (setq org-tag-faces
;;       '(
;;         ("HOME" . (:foreground "GoldenRod" :weight bold))
;;         ("RESEARCH" . (:foreground "GoldenRod" :weight bold))
;;         ("TEACHING" . (:foreground "GoldenRod" :weight bold))
;;         ("OS" . (:foreground "IndianRed1" :weight bold))   
;;         ("DEV" . (:foreground "IndianRed1" :weight bold))   
;;         ("WWW" . (:foreground "IndianRed1" :weight bold))
;;         ("URGENT" . (:foreground "Red" :weight bold))  
;;         ("KEY" . (:foreground "Red" :weight bold))  
;;         ("HARD" . (:foreground "Red" :weight bold))  
;;         ("BONUS" . (:foreground "GoldenRod" :weight bold))
;;         ("noexport" . (:foreground "Red" :weight bold))  
;;         )
;;       )

;; (setq org-enable-priority-commands nil)


;; (setq org-list-demote-modify-bullet (quote (("+" . "-")
;;                                             ("*" . "-")
;;                                             ("1." . "-")
;;                                             ("1)" . "a)"))))
;; (setq org-fast-tag-selection-single-key t)
;; (setq org-use-fast-todo-selection t)
