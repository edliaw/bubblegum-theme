;;; bubblegum-theme.el --- Emacs 24 theme with a dark background.

;; Copyright (C) 2015 , Edward Liaw

;; Author: Edward Liaw
;; https://github.com/edliaw/bubblegum-theme
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Pastel colors for ease of reading on a dark background.
;; Created using the spacemacs theme as a template.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.


(deftheme bubblegum-dark)

(let ((class '((class color) (min-colors 89)))
      ;;                                     GUI       TER
      (fg         (if (display-graphic-p) "#dedede" "#dedede"))
      (bg         (if (display-graphic-p) "#141414" "#141414"))
      (blue-0     (if (display-graphic-p) "#a3d1fe" "#a4d3ee"))
      (blue-1     (if (display-graphic-p) "#65bcfe" "#63b8ff"))
      (blue-2     (if (display-graphic-p) "#58a4de" "#5cacee"))
      (cyan-0     (if (display-graphic-p) "#a3fee6" "#afeeee"))
      (cyan-1     (if (display-graphic-p) "#65fedc" "#40e0d0"))
      (cyan-2     (if (display-graphic-p) "#58dec0" "#40e0d0"))
      (green-0    (if (display-graphic-p) "#b5fea3" "#b4eeb4"))
      (green-1    (if (display-graphic-p) "#8cfe65" "#90ee90"))
      (green-2    (if (display-graphic-p) "#7ade58" "#90ee90"))
      (grey-0     (if (display-graphic-p) "#cccccc" "#cccccc"))
      (grey-1     (if (display-graphic-p) "#ababab" "#ababab"))
      (grey-2     (if (display-graphic-p) "#333333" "#333333"))
      (magenta-0  (if (display-graphic-p) "#cea3fe" "#dda0dd"))
      (magenta-1  (if (display-graphic-p) "#b765fe" "#ba55d3"))
      (magenta-2  (if (display-graphic-p) "#a058de" "#9932cc"))
      (orange-0   (if (display-graphic-p) "#feb1a3" "#eea2ad"))
      (orange-1   (if (display-graphic-p) "#fe8465" "#eea2ad"))
      (orange-2   (if (display-graphic-p) "#de7358" "#eea2ad"))
      (red-0      (if (display-graphic-p) "#fea3e9" "#eeaeee"))
      (red-1      (if (display-graphic-p) "#fe65e1" "#ee7ae9"))
      (red-2      (if (display-graphic-p) "#de58c5" "#cd69c9"))
      (yellow-0   (if (display-graphic-p) "#fefca3" "#eee8aa"))
      (yellow-1   (if (display-graphic-p) "#fefc65" "#bdb76b"))
      (yellow-2   (if (display-graphic-p) "#dedc58" "#bdb76b")))

  (custom-theme-set-faces
   'bubblegum-dark

;;;;; basics
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(vertical-border ((,class (:foreground ,grey-1))))
   `(eval-sexp-fu-flash ((,class (:foreground ,bg :background ,green-2))))
   `(eval-sexp-fu-flash-error ((,class (:foreground ,bg :background ,red-2 ))))
   `(minibuffer-prompt ((,class (:foreground ,yellow-0 :weight bold))))
   `(match ((,class (:foreground ,bg :background ,cyan-2))))
   `(default-italic ((,class (:slant italic))))
   `(link ((,class (:foreground ,blue-0 :underline t))))
   `(link-visited ((,class (:foreground ,blue-1 :underline t))))
   `(font-lock-builtin-face ((,class (:foreground ,magenta-0))))
   `(font-lock-comment-face ((,class (:foreground ,grey-1))))
   `(font-lock-negation-char-face ((,class (:foreground ,orange-0))))
   `(font-lock-reference-face ((,class (:foreground ,orange-1))))
   `(font-lock-constant-face ((,class (:foreground ,orange-0))))
   `(font-lock-doc-face ((,class (:foreground ,grey-0))))
   `(font-lock-function-name-face ((,class (:foreground ,green-0 :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,yellow-0))))
   `(font-lock-string-face ((,class (:foreground ,red-0))))
   `(font-lock-type-face ((,class (:foreground ,blue-0 :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,cyan-0))))
   `(font-lock-preprocessor-face ((,class (:foreground ,green-0))))
   `(font-lock-warning-face ((,class (:foreground ,red-0 :weight bold))))
   `(region ((,class (:foreground ,bg :background ,grey-1))))
   `(italic ((,class (:inherit default-italic))))
   `(highlight ((,class (:foreground ,bg :background ,yellow-2))))
   `(hl-line ((,class (:background ,grey-2))))
   `(fringe ((,class (:foreground ,grey-0))))
   `(show-paren-match-face ((,class (:background ,yellow-2))))
   `(secondary-selection ((,class (:foreground ,bg :background ,cyan-2))))
   `(cursor ((,class (:inverse-video t :underline t :overline t))))
   `(isearch ((,class (:inherit highlight))))
   `(success ((,class (:foreground ,green-1 :weight bold))))
   `(warning ((,class (:foreground ,orange-1 :weight bold))))
   `(error ((,class (:foreground ,red-1 :weight bold))))
   `(lazy-highlight ((,class (:foreground ,bg :background ,cyan-2))))
   `(page-break-lines ((,class (:foreground ,grey-1))))
   `(mode-line ((,class (:foreground ,fg))))
   `(mode-line-inactive ((,class (:foreground ,fg
                                  :box (:color ,grey-1 :line-width 1)))))
   `(mode-line-buffer-id ((,class (:foreground ,blue-0 :weight bold))))

;;;;; powerline
   `(powerline-active1 ((,class (:foreground ,bg :background ,blue-2))))
   `(powerline-active2 ((,class (:foreground ,bg :background ,blue-2))))
   `(powerline-inactive1 ((,class (:foreground ,fg :background ,grey-2))))
   `(powerline-inactive2 ((,class (:foreground ,fg :background ,grey-2))))

;;;;; guide-key
   `(guide-key/highlight-command-face ((,class (:foreground ,fg))))
   `(guide-key/key-face ((,class (:foreground ,blue-1))))
   `(guide-key/prefix-command-face ((,class (:foreground ,blue-2 :weight bold))))

;;;;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,red-1)))
      (,class (:foreground ,bg :background ,red-2 :weight bold :underline t))))

   `(flycheck-warning
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,orange-1)))
      (,class (:foreground ,bg :background ,orange-2 :weight bold :underline t))))

   `(flycheck-info
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,cyan-1)))
      (,class (:foreground ,fg :background ,cyan-1 :weight bold :underline t))))

   `(flycheck-error-list-checker-name ((,class (:foreground ,yellow-0))))
   `(flycheck-fringe-error ((,class (:inherit error))))
   `(flycheck-fringe-warning ((,class (:inherit warning))))
   `(flycheck-fringe-info ((,class (:foreground ,cyan-1 :weight bold))))

;;;;; anzu-mode
   `(anzu-mode-line ((,class (:foreground ,yellow-1 :weight bold))))

;;;;; smartparens
   `(sp-show-pair-match-face ((,class (:foreground ,green-1 :weight bold :underline t))))
   `(sp-pair-overlay-face ((,class (:foreground ,bg :background ,red-2))))

;;;;; git-gutter-fr
   `(git-gutter-fr:added ((,class (:foreground ,green-1 :weight bold))))
   `(git-gutter-fr:deleted ((,class (:foreground ,red-1 :weight bold))))
   `(git-gutter-fr:modified ((,class (:foreground ,cyan-1 :weight bold))))

;;;;; ido
   `(ido-first-match ((,class (:foreground ,blue-0 :weight bold))))
   `(ido-only-match ((,class (:foreground ,green-1))))
   `(ido-subdir ((,class (:foreground ,blue-1))))

;;;;; helm
   `(helm-bookmark-directory ((,class (:inherit helm-ff-directory))))
   `(helm-bookmark-file ((,class (:foreground ,fg))))
   `(helm-bookmark-gnus ((,class (:foreground ,blue-0))))
   `(helm-bookmark-info ((,class (:foreground ,blue-0))))
   `(helm-bookmark-man ((,class (:foreground ,blue-0))))
   `(helm-bookmark-w3m ((,class (:foreground ,blue-0))))
   `(helm-buffer-directory ((,class (:foreground ,fg))))
   `(helm-buffer-file ((,class (:foreground ,fg))))
   `(helm-buffer-not-saved ((,class (:foreground ,blue-0))))
   `(helm-buffer-process ((,class (:foreground ,magenta-0))))
   `(helm-buffer-saved-out ((,class (:foreground ,fg))))
   `(helm-buffer-size ((,class (:foreground ,fg))))
   `(helm-candidate-number ((,class (:foreground ,cyan-1 :weight bold))))
   `(helm-header ((,class (:foreground ,fg))))
   `(helm-ff-directory ((,class (:foreground ,blue-1 :weight bold))))
   `(helm-ff-dotted-directory ((,class (:foreground ,blue-1 :weight bold))))
   `(helm-ff-executable ((,class (:inherit success :weight normal))))
   `(helm-ff-file ((,class (:foreground ,fg :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,red-1 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,bg :background ,yellow-2 :weight normal))))
   `(helm-ff-symlink ((,class (:foreground ,cyan-1 :weight bold))))
   `(helm-grep-cmd-line ((,class (:foreground ,fg))))
   `(helm-grep-file ((,class (:foreground ,fg))))
   `(helm-grep-finish ((,class (:foreground ,fg))))
   `(helm-grep-lineno ((,class (:foreground ,fg))))
   `(helm-grep-match ((,class (:inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,green-0))))
   `(helm-source-header ((,class (:foreground ,bg :background ,blue-2 :weight bold))))
   `(helm-selection ((,class (:foreground ,bg :background ,red-2))))
   `(helm-selection-line ((,class (:background ,grey-2))))
   `(helm-separator ((,class (:foreground ,blue-0))))
   `(helm-time-zone-current ((,class (:foreground ,magenta-0))))
   `(helm-time-zone-home ((,class (:foreground ,blue-0))))
   `(helm-match ((,class (:inherit match))))
   `(helm-match-item ((,class (:inherit match))))
   `(helm-moccur-buffer ((,class (:foreground ,green-0))))
   `(helm-visible-mark ((,class (:foreground ,bg :background ,grey-1))))

;;;;; helm-swoop
   `(helm-swoop-target-line-block-face ((,class (:foreground ,fg :background ,red-2))))
   `(helm-swoop-target-line-face ((,class (:foreground ,fg :background ,red-2))))
   `(helm-swoop-target-word-face ((,class (:foreground ,bg :background ,green-1))))

;;;;; company
   `(company-echo-common ((,class (:foreground ,bg :background ,fg))))
   `(company-preview ((,class (:foreground ,blue-1 :background ,bg))))
   `(company-preview-common ((,class (:foreground ,yellow-0 :background ,grey-2))))
   `(company-preview-search ((,class (:foreground ,green-1 :background ,grey-2))))
   `(company-scrollbar-bg ((,class (:background ,grey-2))))
   `(company-scrollbar-fg ((,class (:background ,blue-0))))
   `(company-tooltip ((,class (:background ,grey-2))))
   `(company-tooltip-annotation ((,class (:foreground ,blue-1 :background ,grey-2))))
   `(company-tooltip-common ((,class (:background ,grey-2))))
   `(company-tooltip-common-selection ((,class (:foreground ,green-1))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-search ((,class (:inherit match))))
   `(company-tooltip-selection ((,class (:foreground ,bg :background ,blue-2 :weight bold))))
   `(company-template-field ((,class (:inherit region))))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-unmatched-face ((,class (:inherit warning))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,cyan-1))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,yellow-1))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,blue-1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,magenta-1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,green-1))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,red-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,blue-2))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,magenta-2))))

;;;;; dired
   `(dired-directory ((,class (:foreground ,blue-1 :weight bold))))
   `(dired-flagged ((,class (:foreground ,red-1))))
   `(dired-header ((,class (:foreground ,blue-0 :weight bold))))
   `(dired-ignored ((,class (:inherit shadow))))
   `(dired-mark ((,class (:foreground ,blue-0 :weight bold))))
   `(dired-marked ((,class (:foreground ,magenta-0 :weight bold))))
   `(dired-perm-write ((,class (:foreground ,fg :underline t))))
   `(dired-symlink ((,class (:foreground ,cyan-0 :weight bold))))
   `(dired-warning ((,class (:inherit warning))))

;;;;; eshell
   `(eshell-prompt ((,class (:foreground ,yellow-0 :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
   `(eshell-ls-directory ((,class (:foreground ,cyan-1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,green-1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
   `(eshell-ls-special ((,class (:foreground ,yellow-1 :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,cyan-2 :weight bold))))

;;;;; term
   `(term ((,class (:foreground ,fg :background ,bg))))
   `(term-color-black ((,class (:foreground ,grey-2))))
   `(term-color-blue ((,class (:foreground ,blue-0))))
   `(term-color-red ((,class (:foreground ,red-0))))
   `(term-color-green ((,class (:foreground ,green-0))))
   `(term-color-yellow ((,class (:foreground ,yellow-0))))
   `(term-color-magenta ((,class (:foreground ,magenta-0))))
   `(term-color-cyan ((,class (:foreground ,cyan-0))))
   `(term-color-white ((,class (:foreground ,grey-1))))

;;;;; neotree
   `(neo-root-dir-face ((,class (:foreground ,green-0 :weight bold))))
   `(neo-dir-link-face ((,class (:foreground ,cyan-1 :weight bold))))
   `(neo-file-link-face ((,class (:foreground ,fg))))
   `(neo-expand-btn-face ((,class (:foreground ,fg))))

;;;;; linum-mode
   `(linum ((,class (:foreground ,red-0 :background ,grey-0))))

;;;;; magit
   `(magit-blame-sha1 ((,class (:background ,grey-1 :foreground ,green-0))))
   `(magit-blame-time ((,class (:background ,grey-1 :foreground ,blue-1))))
   `(magit-blame-header ((,class (:background ,grey-1 :foreground ,blue-1))))
   `(magit-blame-subject ((,class (:background ,grey-1 :foreground ,fg))))
   `(magit-blame-culprit ((,class (:background ,grey-1 :foreground ,red-0))))
   `(magit-branch ((,class (:foreground ,orange-0 :weight bold))))
   `(magit-diff-hunk-header ((,class (:foreground ,magenta-0))))
   `(magit-diff-file-header ((,class (:foreground ,red-0))))
   `(magit-diff-context-highlight ((,class (:inherit highlight))))
   `(magit-diffstat-added ((,class (:foreground ,blue-0))))
   `(magit-diffstat-removed ((,class (:foreground ,cyan-0))))
   `(magit-hash ((,class (:foreground ,fg))))
   `(magit-hunk-heading ((,class (:background ,grey-1))))
   `(magit-hunk-heading-highlight ((,class (:background ,grey-1))))
   `(magit-log-author ((,class (:foreground ,fg))))
   `(magit-log-head-label-remote ((,class (:background ,green-1 :foreground ,bg :weight bold))))
   `(magit-log-head-label-local ((,class (:background ,cyan-1 :foreground ,bg :weight bold))))
   `(magit-log-head-label-tags ((,class (:background ,magenta-2 :foreground ,bg :weight bold))))
   `(magit-log-head-label-wip ((,class (:background ,cyan-2 :foreground ,bg :weight bold))))
   `(magit-log-head-label-head ((,class (:background ,yellow-1 :foreground ,bg :weight bold))))
   `(magit-log-sha1 ((,class (:foreground ,red-0))))
   `(magit-item-highlight ((,class (:foreground ,bg :background ,grey-0))))
   `(magit-process-ok ((,class (:inherit success))))
   `(magit-process-ng ((,class (:inherit error))))
   `(magit-section-heading ((,class (:foreground ,yellow-0 :weight bold))))
   `(magit-section-highlight ((,class (:background ,grey-0))))
   `(magit-section-title ((,class (:background ,bg :foreground ,magenta-0 :weight bold))))

;;;;; org
   `(org-agenda-structure ((,class (:weight bold :foreground ,blue-0))))
   `(org-agenda-clocking ((,class (:foreground ,blue-0))))
   `(org-agenda-date ((,class (:foreground ,cyan-0 :height 1.1))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,yellow-0 :height 1.3))))
   `(org-agenda-done ((,class (:foreground ,green-1 :weight bold))))
   `(org-block ((,class (:foreground ,fg))))
   `(org-code ((,class (:foreground ,cyan-2))))
   `(org-column ((,class (:background ,red-2))))
   `(org-column-title ((,class (:background ,red-2))))
   `(org-clock-overlay ((,class (:foreground ,blue-0))))
   `(org-date ((,class (:underline t :foreground ,cyan-0) )))
   `(org-date-selected ((,class (:background ,green-0 :foreground ,bg) )))
   `(org-document-info-keyword ((,class (:foreground ,green-0))))
   `(org-document-title ((,class (:foreground ,blue-1 :weight bold :height 1.4))))
   `(org-done ((,class (:foreground ,green-1 :weight bold :underline t))))
   `(org-ellipsis ((,class (:foreground ,magenta-0))))
   `(org-footnote  ((,class (:underline t :foreground ,fg))))
   `(org-hide ((,class (:foreground ,fg))))
   `(org-level-1 ((,class (:weight bold :foreground ,cyan-1 :height 1.3))))
   `(org-level-2 ((,class (:weight bold :foreground ,yellow-1 :height 1.2))))
   `(org-level-3 ((,class (:weight normal :foreground ,blue-1 :height 1.1))))
   `(org-level-4 ((,class (:weight normal :foreground ,magenta-1 :height 1.0))))
   `(org-level-5 ((,class (:weight normal :foreground ,green-1 :height 1.0))))
   `(org-level-6 ((,class (:weight normal :foreground ,red-1 :height 1.0))))
   `(org-level-7 ((,class (:weight normal :foreground ,blue-2 :height 1.0))))
   `(org-level-8 ((,class (:weight normal :foreground ,magenta-2 :height 1.0))))
   `(org-link ((,class (:underline t :foreground ,grey-1))))
   `(org-mode-line-clock-overrun ((,class (:foreground ,red-1))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-priority ((,class (:foreground ,yellow-1 :weight bold))))
   `(org-table ((,class (:foreground ,fg))))
   `(org-todo ((,class (:foreground ,yellow-1 :weight bold :underline t))))
   `(org-scheduled ((,class (:foreground ,blue-0))))
   `(org-scheduled-today ((,class (:foreground ,green-0 :weight bold :height 1.2))))
   `(org-sexp-date ((,class (:foreground ,fg))))
   `(org-special-keyword ((,class (:foreground ,green-0))))
   `(org-warning ((,class (:inherit warning))))
   `(org-verbatim ((,class (:foreground ,fg))))
   `(org-verse ((,class (:inherit org-block :slant italic))))

;;;;; info
   `(info-quoted-name ((,class (:foreground ,magenta-0))))
   `(info-string ((,class (:foreground ,red-0))))
   `(info-title-1 ((,class (:height 1.4 :weight bold))))
   `(info-title-2 ((,class (:height 1.3 :weight bold))))
   `(info-title-3 ((,class (:height 1.3))))
   `(info-title-4 ((,class (:height 1.2))))
   `(info-node ((,class (:foreground ,green-0 :weight bold))))
   `(info-menu ((,class (:foreground ,green-1))))
   `(info-header-xref ((,class (:foreground ,green-0 :underline t))))

;;;;; ERC
   `(erc-prompt-face ((,class (:foreground ,green-1 :weight bold))))
   `(erc-notice-face ((,class (:foreground ,red-0))))
   `(erc-timestamp-face ((,class (:foreground ,magenta-0))))
   `(erc-my-nick-face ((,class (:foreground ,blue-1))))
   `(erc-input-face ((,class (:foreground ,green-0))))
   `(erc-nick-prefix-face ((,class (:foreground ,yellow-1))))
   `(erc-nick-default-face ((,class (:foreground ,cyan-1))))

;;;;; other, need more work
   `(custom-button ((,class (:background ,yellow-1))))
   `(font-latex-bold-face ((,class (:foreground ,blue-0))))
   `(font-latex-italic-face ((,class (:foreground ,blue-2 :slant italic))))
   `(font-latex-string-face ((,class (:foreground ,red-0))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,orange-0))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,cyan-0))))
   `(ido-only-match ((,class (:foreground ,yellow-1))))
   `(ido-first-match ((,class (:foreground ,yellow-0 :weight bold))))
   `(ido-vertical-match-face ((,class (:foreground ,blue-0))))
   `(flx-highlight-face ((,class (:foreground ,blue-0))))
   `(gnus-header-content ((,class (:foreground ,yellow-0))))
   `(gnus-header-from ((,class (:foreground ,cyan-0))))
   `(gnus-header-name ((,class (:foreground ,blue-0))))
   `(gnus-header-subject ((,class (:foreground ,green-0 :weight bold))))
   `(mu4e-view-url-number-face ((,class (:foreground ,blue-0))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg))))
   `(mu4e-header-marks-face ((,class (:foreground ,blue-0))))
   `(ffap ((,class (:foreground ,fg))))
   `(js2-private-function-call ((,class (:foreground ,orange-0))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,red-0))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,blue-1))))
   `(js2-external-variable ((,class (:foreground ,blue-0  ))))
   `(js2-function-param ((,class (:foreground ,orange-0))))
   `(js2-jsdoc-value ((,class (:foreground ,red-0))))
   `(js2-private-member ((,class (:foreground ,fg))))
   `(js3-warning-face ((,class (:inherit warning))))
   `(js3-error-face ((,class (:inherit error))))
   `(js3-external-variable-face ((,class (:foreground ,cyan-0))))
   `(js3-function-param-face ((,class (:foreground ,blue-2))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,yellow-0))))
   `(js3-instance-member-face ((,class (:foreground ,orange-0))))
   `(ac-completion-face ((,class (:underline t :foreground ,yellow-0))))
   `(icompletep-determined ((,class (:foreground ,magenta-0))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,magenta-0))))
   `(undo-tree-visualizer-default-face ((,class (:foreground ,fg))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,cyan-0))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,blue-0))))
   `(slime-repl-inputed-output-face ((,class (:foreground ,blue-0))))
   `(trailing-whitespace ((,class (:foreground ,bg :background ,red-1))))
   `(web-mode-builtin-face ((,class (:inherit font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,yellow-0))))
   `(web-mode-doctype-face ((,class (:inherit font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,red-0))))
   `(web-mode-type-face ((,class (:inherit font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,green-0))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,yellow-0))))
   `(web-mode-warning-face ((,class (:inherit font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,magenta-0))))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'bubblegum-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; bubblegum-dark-theme.el ends here
