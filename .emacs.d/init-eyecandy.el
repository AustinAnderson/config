(require-package 'smart-mode-line)
(require 'smart-mode-line)
(require-package 'pos-tip)
(require 'pos-tip)

(setq sml/theme 'dark)
(sml/setup)



(require-package 'diminish)
(after 'diminish-autoloads
  (diminish 'visual-line-mode)
  (after 'undo-tree (diminish 'undo-tree-mode))
  (after 'auto-complete (diminish 'auto-complete-mode))
  (after 'projectile (diminish 'projectile-mode))
  (after 'guide-key (diminish 'guide-key-mode))
  (after 'eldoc (diminish 'eldoc-mode))
  (after 'smartparens (diminish 'smartparens-mode))
  (after 'company (diminish 'company-mode))
  (after 'git-gutter+ (diminish 'git-gutter+-mode))
  (after 'elisp-slime-nav (diminish 'elisp-slime-nav-mode))
  )

(custom-set-faces
 ;; init file should contain only one custom-set-faces. If there is more than one, they won't work right.
 '(ac-selection-face ((t (:foreground "white" :background "DodgerBlue"))))
 '(cursor ((t (:foreground "white" :background "DodgerBlue")))) ;'(cursor ((t (:background "chartreuse"))))
 '(hl-line ((t (:inherit highlight :background "#333333"))))
 '(show-paren-match ((t (:background "#4e4e4e"))))
 '(sp-show-pair-match-face ((t (:underline "Green"))))
 '(vertical-border ((t (:background "#8a8a8a" :foreground "lemon chiffon")))))

;; fight the "low contrast" fad.
(set-face-attribute 'default nil
                    :background "black"
                    :foreground "white")

(pcase (window-system)
  (`ns (set-face-attribute 'default nil :height 135))
  (`w32 (set-face-attribute 'default nil
                            :family "Consolas" :height 110)))

(global-hl-line-mode +1)

;; (require-package 'color-theme-sanityinc-tomorrow)
;; (require-package 'zenburn-theme)
(require-package 'moe-theme)
(require 'moe-theme)
(moe-dark)


(provide 'init-eyecandy)
