;;; doom-nyx-theme.el -*- no-byte-compile: t; -*-

(require 'doom-themes)

(def-doom-theme doom-nyx
  "Night time theme for Doom"

  ;; name        default   256 16
  ((bg         '("#1b1433" nil nil)) ;; background
   (bg-alt     '("#100738" nil nil)) ;; modeline bg
   (base0      '("#745dd2" nil nil)) ;; strings/numbers
   (base1      '("#8475fb" nil nil)) ;; active completion item
   (base2      '("#ffffff" nil nil)) ;; cursor/current line number
   (base3      '("#47377b" nil nil)) ;; line numbers
   (base4      '("#73669e" nil nil)) ;; fringe markers
   (base5      '("#73669e" nil nil)) ;; comments
   (base6      '("#573fe9" nil nil)) ;; keywords
   (base7      '("#291b5a" nil nil)) ;; region
   (base8      '("#2a204c" nil nil)) ;; hl-line
   (fg         '("#f1f1f2" nil nil)) ;; default
   (fg-alt     '("#ffffff" nil nil)) ;; not sure?

   (grey       fg)
   (red        fg)
   (blue       fg)
   (dark-blue  fg)
   (orange     fg)
   (green      fg)
   (teal       fg)
   (yellow     fg)
   (magenta    fg)
   (violet     fg)
   (cyan       fg)
   (dark-cyan  fg)

   ;; face categories -- required for all themes
   (highlight      base0)
   (vertical-bar   (doom-darken bg 0.3))
   (selection      base1)
   (builtin        base5)
   (comments       base5)
   (doc-comments   base5)
   (constants      fg)
   (functions      fg)
   (keywords       base6)
   (methods        fg)
   (operators      fg)
   (type           base0)
   (strings        base0)
   (variables      fg)
   (numbers        base0)
   (region         base7)
   (error          "#fe0e6c")
   (warning        "#c3a762")
   (success        base6)
   (vc-modified    base0)
   (vc-added       "#4db4a6")
   (vc-deleted     "#fe0e6c")

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))

   (modeline-fg     nil)
   (modeline-fg-alt base5)

   (modeline-bg bg-alt)
   (modeline-bg-l bg-alt)
   (modeline-bg-inactive   (doom-darken bg-alt 0.1))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1))))

  ;; --- extra faces ------------------------
  (((line-number &override) :foreground base3)
   ((line-number-current-line &override) :foreground base2)

   (rainbow-delimiters-depth-1-face
    :foreground base1)

   (rainbow-delimiters-depth-2-face
    :foreground base6)

   (rainbow-delimiters-depth-3-face
    :foreground base0)

   (show-paren-match
    :foreground "#fe7ffe"
    :background bg-alt)

   (highlight
    :foreground fg)

   (evil-ex-search
    :foreground base6
    :background fg)

   (lazy-highlight
    :weight 'bold
    :foreground base6
    :background fg)

   (hl-line
    :background base8)

   (font-lock-keyword-face
    :weight 'bold
    :foreground base6
    :background nil)

   (git-gutter-fr:added
    :foreground vc-added)

   (git-gutter-fr:modified
    :foreground vc-modified)

   (magit-diff-added
    :foreground vc-added)

   (magit-diff-removed
    :foreground vc-deleted)

   (magit-diff-removed-highlight
    :foreground vc-deleted
    :background base8)

   (magit-diff-added-highlight
    :foreground vc-added
    :background base8)

   (diff-refine-added
    :foreground vc-added
    :background base3)

   (diff-refine-removed
    :background base3
    :foreground vc-deleted)

   (magit-diff-hunk-heading
    :background base3)

   (magit-diff-hunk-heading-highlight
    :background base0)

   (company-tooltip
    :foreground fg
    :background bg-alt)

   (company-tooltip-selection
    :foreground fg
    :background base6)

   (company-tooltip-mouse
    :foreground fg
    :background base6)

   (company-tooltip-common
    :foreground base0
    :background bg-alt)

   (company-tooltip-common-selection
    :foreground fg
    :background base6)

   (evil-ex-search
    :foreground fg
    :background base6)

   (widget-field
    :background base3)

   (custom-state
    :background base3)

   (custom-button
    :background bg-alt
    :box '(:color ""))

   (js2-jsdoc-type
    :foreground type)

   (js2-jsdoc-tag
    :foreground doc-comments)

   (js2-jsdoc-value
    :foreground fg)

   (markdown-code-face
    :background bg
    :extend t)

   (org-level-1 :foreground base6 :weight 'bold)
   (org-level-2 :foreground base0 :weight 'bold)

   (web-mode-html-tag-face :foreground base6)
   (web-mode-html-tag-bracket-face :foreground base5)
   (web-mode-html-attr-face :foreground fg)
   (web-mode-html-attr-value-face :foreground fg)
   (diredfl-dir-name :foreground base0)

   (mode-line
    :background modeline-bg :foreground modeline-fg)
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt)
   (mode-line-highlight
    :foreground base6
    :background bg-alt)))

;;; doom-nyx-theme.el ends here
