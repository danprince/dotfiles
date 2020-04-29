;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(setq custom-file "~/.doom.d/custom.el")
(load custom-file)

;; GUI Mode

(when window-system
  (set-frame-font "Mononoki 15")
  ;; disable option as meta (needed to type # on mac)
  (setq mac-option-modifier nil)
  ;; help gui emacs find executables from the shell's PATH
  (exec-path-from-shell-initialize))

(setq doom-theme 'doom-city-lights)
;;(setq doom-theme 'doom-solarized-light)

(when (eq doom-theme 'doom-city-lights)
  (custom-set-faces
  '(line-number ((t (:inherit default :background "#181E24" :foreground "#384551" :strike-through nil :underline nil :slant normal :weight normal))))
  '(line-number-current-line ((t (:inherit (hl-line default) :foreground "white" :strike-through nil :underline nil :slant normal :weight bold))))
  '(vertical-border ((t (:background "#1D252C" :foreground "#10151C"))))))

;; Keybindings

(map!
 :n "-" #'dired-jump
 :n "J" #'evil-next-line
 :n "K" #'evil-previous-line
 :n "SPC rs" #'tide-rename-symbol)

;; Config

(setq-default
 indent-tabs-mode nil
 tab-width 2
 c-basic-offset 2
 css-indent-offset 2
 evil-shift-width 2
 js-indent-level 2
 typescript-indent-level 2
 web-mode-code-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-markup-indent-offset 2
 web-mode-sql-indent-offset 2
 flycheck-disabled-checkers '(emacs-lisp-checkdoc))

(remove-hook 'markdown-mode-hook #'auto-fill-mode)
(remove-hook 'org-mode-hook #'auto-fill-mode)
(remove-hook 'text-mode-hook #'auto-fill-mode)

(add-hook 'text-mode-hook
  (lambda ()
     (visual-line-mode +1)
     (setq indent-tabs-mode nil)
     (setq tab-width 2)))

(add-hook 'json-mode-hook
  (lambda ()
    (setq js-indent-level 2)))

(add-hook 'dired-mode-hook
  (lambda ()
    (dired-hide-details-mode +1)))

(add-hook 'markdown-mode-hook
  (lambda ()
    (writegood-mode)))

;; use slightly taller characters to render the vertical divider
;; which makes it appear as a continuous line
(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?│))

;; use an ellipsis when text overflows the buffer
(set-display-table-slot standard-display-table 'truncation ?…)

(use-package! writegood-mode
  :config
  (unless window-system
    (set-face-attribute 'writegood-weasels-face nil
      :inherit nil
      :background "transparent"
      :underline t
      :foreground "orange")
    (set-face-attribute 'writegood-passive-voice-face nil
      :inherit nil
      :background "transparent"
      :underline t
      :foreground "cyan")
    (set-face-attribute 'writegood-duplicates-face nil
      :inherit nil
      :background "transparent"
      :underline t
      :foreground "magenta")))
