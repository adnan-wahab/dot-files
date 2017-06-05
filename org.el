(eval-after-load 'org
  (lambda()
    ;; (require 'ob-emacs-lisp)
    ;; (require 'ob-python)
    ;; (require 'ob-sql)
    ;; (require 'ob-sqlite)
    ;; (require 'ob-org)
    ;; (require 'ob-css)
    ;; (require 'ob-js)
    ;; (setq org-export-babel-evaluate nil)
    ;; (setq org-startup-indented t)
    ;; ;;increase imenu depth to include third level headings
    ;; ;;(require 'ob-shell)
    ;; ;;Update images from babel code blocks automatically
    ;; (setq org-imenu-depth 3)
    ;; (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
    ;; (setq org-src-fontify-natively t)
    ;; (setq org-src-tab-acts-natively t)
    ;; (setq org-confirm-babel-evaluate nil)
    )
  )


(with-eval-after-load 'org

  (require 'org-beautify-theme)
  (require 'org-bullets)

  (setq org-directory "~/Dropbox/org-mode/")
  (setq org-agenda-files (list org-directory))
  (setq org-default-notes-file (concat org-directory "adnan.org"))
  (setq org-archive-location (concat org-directory "/freezer.org::* Done Task"))

  ;; (setq org-capture-templates
  ;;       '(
  ;;         ("a" "Appointment" entry
  ;;          (file + headline (concat org-directory "adnan.org") "Calendar")
  ;;          "* %?\n\n%^T\n\n:PROPERTIES:\n\n:END:\n\n")

  ;;         ("l" "Link" entry (file+headline (concat org-directory "adnan.org") "Read")
  ;;          "* %? %^L %^g \n%T" :prepend t)

  ;;         ("t" "To Do Item" entry
  ;;          (file+headline org-default-notes-file "Now")
  ;;          "* TODO %?\n%u" :prepend t)

  ;;         ("i" "Inquiry" entry
  ;;          (file+headline org-default-notes-file "Questions")
  ;;          "* %?\n%u" :prepend t)
  ;;         ))


  (setq counsel-dash-docsets-path "~/.docset")
  (setq counsel-dash-docsets-url "https://raw.github.com/Kapeli/feeds/master")
  (setq counsel-dash-min-length 3)
  (setq counsel-dash-candidate-format "%d %n (%t)")
  (setq counsel-dash-enable-debugging nil)
  (setq counsel-dash-browser-func 'browse-url)
  (setq counsel-dash-ignored-docsets nil)
  (setq counsel-dash-common-docsets '("Javascript" "HTML" "Python"))



  (defun org-archive-done-tasks ()
    (interactive)
    (org-map-entries
     (lambda ()
       (org-archive-subtree)
       (setq org-map-continue-from (outline-previous-heading)))
     "/DONE" 'file))

  (setq org-use-property-inheritance t)

  ;; (setq org-agenda-category-icon-alist
  ;;       ;;https://icons8.com/color-icons/
  ;;       '(

  ;;         ("adnan" "~/.emacs.d/icons/clock.png" nil nil :ascent center)
  ;;         ("friend" "~/.emacs.d/icons/facebook.png" nil nil :ascent center)
  ;;         ("blog" "~/.emacs.d/icons/dribble.png" nil nil :ascent center)
  ;;         (".*" '(space . (:width (16))))))

  (setq org-agenda-start-on-weekday 6)
  (setq org-agenda-span 7)
  (setq org-agenda-tags-column -100)
  (setq org-agenda-sticky nil)
  (setq org-agenda-inhibit-startup t)
  (setq org-agenda-show-log t)
  (setq org-hide-leading-stars nil)
  (setq org-cycle-separator-lines 2)
  (setq org-archive-mark-done t)
  (setq org-hide-emphasis-markers t)
  (setq org-startup-folded t)

  ;; (let* ((variable-tuple (cond ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
  ;;                              ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
  ;;                              ((x-list-fonts "Verdana")         '(:font "Verdana"))
  ;;                              ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
  ;;                              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
  ;;        (base-font-color     (face-foreground 'default nil 'default))
  ;;        (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

    ;; (custom-theme-set-faces 'user
    ;;                         `(org-level-8 ((t (,@headline ,@variable-tuple))))
    ;;                         `(org-level-7 ((t (,@headline ,@variable-tuple))))
    ;;                         `(org-level-6 ((t (,@headline ,@variable-tuple))))
    ;;                         `(org-level-5 ((t (,@headline ,@variable-tuple))))
    ;;                         `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
    ;;                         `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
    ;;                         `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
    ;;                         `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
    ;;                         `(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))

  (org-defkey org-mode-map (kbd "C-,") nil)
  (org-defkey org-mode-map (kbd "C-'") nil)
  (org-defkey org-mode-map (kbd "M-h") nil)
  (org-defkey org-mode-map (kbd "C-c <SPC>") 'eshell)

  (org-defkey org-mode-map (kbd "M-f") 'org-mark-element)

  (add-hook 'org-mode-hook 'flyspell-mode)
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )
