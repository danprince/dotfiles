;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(when window-system
  (set-default-font "Mononoki 15"))

(load-theme 'doom-one-light t)

(setq
 mac-option-key-is-meta nil
 mac-option-modifier nil)

(setq custom-file "~/.doom.d/custom.el")
(load custom-file)

(map!
 :n "-" #'dired-jump
 :n "J" #'evil-next-line
 :m "K" #'evil-previous-line)
