;;; zendark-theme.el --- A low contrast color theme for Emacs, slightly modified with darker background.

;; Copyright (C) 2011 Bozhidar Batsov, Gleb Peregud

;; Author: Bozhidar Batsov <bozhidar.batsov@gmail.com>
;; Version: 1.3

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A slight modification of Zenburn theme implementation by Bozhidar Batsov.
;;
;; A port of the popular Vim theme Zendark for Emacs 24, built on top of
;; the new built-in theme support in Emacs 24. There exists one other version of the
;; theme by Daniel Brockman. My version was originally based on it,
;; but it was in such a disarray, that I decided to rewrite it from
;; scratch in a more maintainable manner (hopefully).
;;
;;; Installation:
;;
;;   Drop the theme in a folder that is on `custom-theme-load-path'
;; and enjoy!
;;
;; Don't forget that the theme requires Emacs 24.
;;
;;; Bugs
;;
;; None that I'm aware of.
;;
;;; Credits
;;
;; Jani Nurminen created the original theme for vim on such this port
;; is based.
;;
;;; Code
(deftheme zendark "The Zendark color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Zendark palette
      ;; colors with +x are lighter, colors with -x are darker
      (zendark-fg "#dcdccc")
      (zendark-fg-1 "#656555")
      (zendark-bg-1 "#0b0b0b")
      (zendark-bg-05 "#181818")
      (zendark-bg "#1f1f1f")
      (zendark-bg+1 "#2f2f2f")
      (zendark-bg+2 "#3f3f3f")
      (zendark-bg+3 "#4f4f4f")
      (zendark-red+1 "#dca3a3")
      (zendark-red "#cc9393")
      (zendark-red-1 "#bc8383")
      (zendark-red-2 "#ac7373")
      (zendark-red-3 "#9c6363")
      (zendark-red-4 "#8c5353")
      (zendark-orange "#dfaf8f")
      (zendark-yellow "#f0dfaf")
      (zendark-yellow-1 "#e0cf9f")
      (zendark-yellow-2 "#d0bf8f")
      (zendark-green-1 "#5f7f5f")
      (zendark-green "#7f9f7f")
      (zendark-green+1 "#8fb28f")
      (zendark-green+2 "#9fc59f")
      (zendark-green+3 "#afd8af")
      (zendark-green+4 "#bfebbf")
      (zendark-cyan "#93e0e3")
      (zendark-blue+1 "#94bff3")
      (zendark-blue "#8cd0d3")
      (zendark-blue-1 "#7cb8bb")
      (zendark-blue-2 "#6ca0a3")
      (zendark-blue-3 "#5c888b")
      (zendark-blue-4 "#4c7073")
      (zendark-blue-5 "#366060")
      (zendark-magenta "#dc8cc3"))
  (custom-theme-set-faces
   'zendark
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,zendark-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,zendark-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((,class (:foreground ,zendark-fg :background ,zendark-bg))))
   `(cursor ((,class (:foreground ,zendark-fg))))
   `(escape-glyph-face ((,class (:foreground ,zendark-red))))
   `(fringe ((,class (:foreground ,zendark-fg :background ,zendark-bg+1))))
   `(header-line ((,class (:foreground ,zendark-yellow
                                       :background ,zendark-bg-1
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,zendark-bg-05))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,zendark-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,zendark-green))))
   `(compilation-error-face ((,class (:foreground ,zendark-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,zendark-fg))))
   `(compilation-info-face ((,class (:foreground ,zendark-blue))))
   `(compilation-info ((,class (:foreground ,zendark-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,zendark-green))))
   `(compilation-line-face ((,class (:foreground ,zendark-yellow))))
   `(compilation-line-number ((,class (:foreground ,zendark-yellow))))
   `(compilation-message-face ((,class (:foreground ,zendark-blue))))
   `(compilation-warning-face ((,class (:foreground ,zendark-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,zendark-fg))))
   `(grep-error-face ((,class (:foreground ,zendark-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,zendark-blue))))
   `(grep-match-face ((,class (:foreground ,zendark-orange :weight bold))))
   `(match ((,class (:background ,zendark-bg-1 :foreground ,zendark-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,zendark-yellow :background ,zendark-bg-1))))
   `(isearch-fail ((,class (:foreground ,zendark-fg :background ,zendark-red-4))))
   `(lazy-highlight ((,class (:foreground ,zendark-yellow :background ,zendark-bg+2))))

   `(menu ((,class (:foreground ,zendark-fg :background ,zendark-bg))))
   `(minibuffer-prompt ((,class (:foreground ,zendark-yellow))))
   `(mode-line
     ((,class (:foreground ,zendark-green+1
                           :background ,zendark-bg-1
                           :box (:line-width -1 :style released-button)))))
   `(mode-line-buffer-id ((,class (:foreground ,zendark-yellow :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,zendark-green-1
                           :background ,zendark-bg-05
                           :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,zendark-bg-1))))
   `(secondary-selection ((,class (:background ,zendark-bg+2))))
   `(trailing-whitespace ((,class (:background ,zendark-red))))
   `(vertical-border ((,class (:foreground ,zendark-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,zendark-blue))))
   `(font-lock-comment-face ((,class (:foreground ,zendark-green))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,zendark-green))))
   `(font-lock-constant-face ((,class (:foreground ,zendark-green+4))))
   `(font-lock-doc-face ((,class (:foreground ,zendark-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,zendark-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,zendark-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,zendark-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,zendark-blue))))
   `(font-lock-string-face ((,class (:foreground ,zendark-red))))
   `(font-lock-type-face ((,class (:foreground ,zendark-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,zendark-orange))))
   `(font-lock-warning-face ((,class (:foreground ,zendark-yellow-1 :weight bold :underline t))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,zendark-fg))))
   `(ack-file ((,class (:foreground ,zendark-blue))))
   `(ack-line ((,class (:foreground ,zendark-yellow))))
   `(ack-match ((,class (:foreground ,zendark-orange :background ,zendark-bg-1 :weigth bold))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,zendark-bg+3 :foreground "black"))))
   `(ac-selection-face ((,class (:background ,zendark-blue-4 :foreground ,zendark-fg))))
   `(popup-tip-face ((,class (:background ,zendark-yellow-2 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,zendark-blue-5))))
   `(popup-scroll-bar-background-face ((,class (:background ,zendark-bg-1))))
   `(popup-isearch-match ((,class (:background ,zendark-bg :foreground ,zendark-fg))))

   ;; diff
   `(diff-added ((,class (:foreground ,zendark-green+4))))
   `(diff-changed ((,class (:foreground ,zendark-yellow))))
   `(diff-removed ((,class (:foreground ,zendark-red))))
   `(diff-header ((,class (:background ,zendark-bg+1))))
   `(diff-file-header
     ((,class (:background ,zendark-bg+2 :foreground ,zendark-fg :bold t))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,zendark-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,zendark-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,zendark-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,zendark-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,zendark-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,zendark-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,zendark-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,zendark-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,zendark-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,zendark-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,zendark-red-1 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,zendark-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,zendark-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,zendark-yellow))))
   `(erc-keyword-face ((,class (:foreground ,zendark-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,zendark-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,zendark-green))))
   `(erc-pal-face ((,class (:foreground ,zendark-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,zendark-orange :background ,zendark-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,zendark-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1-face ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty-face ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2-face ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty-face ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3-face ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty-face ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4-face ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty-face ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5-face ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty-face ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6-face ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty-face ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low-face ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty-face ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1-face ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2-face ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3-face ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4-face ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5-face ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6-face ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low-face ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content-face ((,class (:inherit message-header-other))))
   `(gnus-header-from-face ((,class (:inherit message-header-from))))
   `(gnus-header-name-face ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups-face ((,class (:inherit message-header-other))))
   `(gnus-header-subject-face ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled-face ((,class (:foreground ,zendark-orange))))
   `(gnus-summary-high-ancient-face ((,class (:foreground ,zendark-blue))))
   `(gnus-summary-high-read-face ((,class (:foreground ,zendark-green :weight bold))))
   `(gnus-summary-high-ticked-face ((,class (:foreground ,zendark-orange :weight bold))))
   `(gnus-summary-high-unread-face ((,class (:foreground ,zendark-fg :weight bold))))
   `(gnus-summary-low-ancient-face ((,class (:foreground ,zendark-blue))))
   `(gnus-summary-low-read-face ((t (:foreground ,zendark-green))))
   `(gnus-summary-low-ticked-face ((,class (:foreground ,zendark-orange :weight bold))))
   `(gnus-summary-low-unread-face ((,class (:foreground ,zendark-fg))))
   `(gnus-summary-normal-ancient-face ((,class (:foreground ,zendark-blue))))
   `(gnus-summary-normal-read-face ((,class (:foreground ,zendark-green))))
   `(gnus-summary-normal-ticked-face ((,class (:foreground ,zendark-orange :weight bold))))
   `(gnus-summary-normal-unread-face ((,class (:foreground ,zendark-fg))))
   `(gnus-summary-selected-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(gnus-cite-1-face ((,class (:foreground ,zendark-blue))))
   `(gnus-cite-10-face ((,class (:foreground ,zendark-yellow-1))))
   `(gnus-cite-11-face ((,class (:foreground ,zendark-yellow))))
   `(gnus-cite-2-face ((,class (:foreground ,zendark-blue-1))))
   `(gnus-cite-3-face ((,class (:foreground ,zendark-blue-2))))
   `(gnus-cite-4-face ((,class (:foreground ,zendark-green+2))))
   `(gnus-cite-5-face ((,class (:foreground ,zendark-green+1))))
   `(gnus-cite-6-face ((,class (:foreground ,zendark-green))))
   `(gnus-cite-7-face ((,class (:foreground ,zendark-red))))
   `(gnus-cite-8-face ((,class (:foreground ,zendark-red-1))))
   `(gnus-cite-9-face ((,class (:foreground ,zendark-red-2))))
   `(gnus-group-news-1-empty-face ((,class (:foreground ,zendark-yellow))))
   `(gnus-group-news-2-empty-face ((,class (:foreground ,zendark-green+3))))
   `(gnus-group-news-3-empty-face ((,class (:foreground ,zendark-green+1))))
   `(gnus-group-news-4-empty-face ((,class (:foreground ,zendark-blue-2))))
   `(gnus-group-news-5-empty-face ((,class (:foreground ,zendark-blue-3))))
   `(gnus-group-news-6-empty-face ((,class (:foreground ,zendark-bg+2))))
   `(gnus-group-news-low-empty-face ((,class (:foreground ,zendark-bg+2))))
   `(gnus-signature-face ((,class (:foreground ,zendark-yellow))))
   `(gnus-x-face ((,class (:background ,zendark-fg :foreground ,zendark-bg))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,zendark-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,zendark-yellow :weight bold))))
   `(ido-only-match ((,class (:foreground ,zendark-orange :weight bold))))
   `(ido-subdir ((,class (:foreground ,zendark-yellow))))

   ;; linum-mode
   `(linum ((,class (:foreground ,zendark-fg-1 :background ,zendark-bg-1))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,zendark-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,zendark-orange :weight bold))))

   ;; message-mode
   `(message-cited-text-face ((,class (:inherit font-lock-comment))))
   `(message-header-name-face ((,class (:foreground ,zendark-green+1))))
   `(message-header-other-face ((,class (:foreground ,zendark-green))))
   `(message-header-to-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(message-header-from-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(message-header-cc-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(message-header-newsgroups-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(message-header-subject-face ((,class (:foreground ,zendark-orange :weight bold))))
   `(message-header-xheader-face ((,class (:foreground ,zendark-green))))
   `(message-mml-face ((,class (:foreground ,zendark-yellow :weight bold))))
   `(message-separator-face ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,zendark-orange))))
   `(mew-face-header-from ((,class (:foreground ,zendark-yellow))))
   `(mew-face-header-date ((,class (:foreground ,zendark-green))))
   `(mew-face-header-to ((,class (:foreground ,zendark-red))))
   `(mew-face-header-key ((,class (:foreground ,zendark-green))))
   `(mew-face-header-private ((,class (:foreground ,zendark-green))))
   `(mew-face-header-important ((,class (:foreground ,zendark-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,zendark-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,zendark-red))))
   `(mew-face-header-xmew ((,class (:foreground ,zendark-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,zendark-red))))
   `(mew-face-body-url ((,class (:foreground ,zendark-orange))))
   `(mew-face-body-comment ((,class (:foreground ,zendark-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,zendark-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,zendark-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,zendark-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,zendark-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,zendark-red))))
   `(mew-face-mark-review ((,class (:foreground ,zendark-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,zendark-green))))
   `(mew-face-mark-delete ((,class (:foreground ,zendark-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,zendark-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,zendark-green))))
   `(mew-face-mark-unread ((,class (:foreground ,zendark-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,zendark-green))))
   `(mew-face-eof-part ((,class (:foreground ,zendark-yellow))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,zendark-yellow))))
   `(nav-face-button-num ((,class (:foreground ,zendark-cyan))))
   `(nav-face-dir ((,class (:foreground ,zendark-green))))
   `(nav-face-hdir ((,class (:foreground ,zendark-red))))
   `(nav-face-file ((,class (:foreground ,zendark-fg))))
   `(nav-face-hfile ((,class (:foreground ,zendark-red-4))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,zendark-fg :weight bold))))
   `(org-checkbox ((,class (:background ,zendark-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,zendark-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,zendark-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,zendark-green+3))))
   `(org-formula ((,class (:foreground ,zendark-yellow-2))))
   `(org-headline-done ((,class (:foreground ,zendark-green+3))))
   `(org-hide ((,class (:foreground ,zendark-bg-1))))
   `(org-level-1 ((,class (:foreground ,zendark-orange))))
   `(org-level-2 ((,class (:foreground ,zendark-green+1))))
   `(org-level-3 ((,class (:foreground ,zendark-blue-1))))
   `(org-level-4 ((,class (:foreground ,zendark-yellow-2))))
   `(org-level-5 ((,class (:foreground ,zendark-cyan))))
   `(org-level-6 ((,class (:foreground ,zendark-green-1))))
   `(org-level-7 ((,class (:foreground ,zendark-red-4))))
   `(org-level-8 ((,class (:foreground ,zendark-blue-4))))
   `(org-link ((,class (:foreground ,zendark-yellow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,zendark-green+4))))
   `(org-scheduled-previously ((,class (:foreground ,zendark-red-4))))
   `(org-scheduled-today ((,class (:foreground ,zendark-blue+1))))
   `(org-special-keyword ((,class (:foreground ,zendark-yellow-1))))
   `(org-table ((,class (:foreground ,zendark-green+2))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,zendark-orange))))
   `(org-todo ((,class (:bold t :foreground ,zendark-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,zendark-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,zendark-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,zendark-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,zendark-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,zendark-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,zendark-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,zendark-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,zendark-green+4))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,zendark-red-3))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,zendark-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,zendark-green+2))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,zendark-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,zendark-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,zendark-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,zendark-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,zendark-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,zendark-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,zendark-red))))
   `(rpm-spec-package-face ((,class (:foreground ,zendark-red))))
   `(rpm-spec-section-face ((,class (:foreground ,zendark-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,zendark-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,zendark-red))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,zendark-red-3 :background ,zendark-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,zendark-blue-1 :background ,zendark-bg :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,zendark-red))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,zendark-bg :foreground ,zendark-bg+1))))
   `(whitespace-hspace ((,class (:background ,zendark-bg :foreground ,zendark-bg+1))))
   `(whitespace-tab ((,class (:background ,zendark-bg :foreground ,zendark-red))))
   `(whitespace-newline ((,class (:foreground ,zendark-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,zendark-red :background ,zendark-bg))))
   `(whitespace-line ((,class (:background ,zendark-bg-05 :foreground ,zendark-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,zendark-orange :foreground ,zendark-orange))))
   `(whitespace-indentation ((,class (:background ,zendark-yellow, :foreground ,zendark-red))))
   `(whitespace-empty ((,class (:background ,zendark-yellow :foreground ,zendark-red))))
   `(whitespace-space-after-tab ((,class (:background ,zendark-yellow :foreground ,zendark-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,zendark-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,zendark-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,zendark-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,zendark-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,zendark-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,zendark-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,zendark-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,zendark-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,zendark-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,zendark-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,zendark-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,zendark-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,zendark-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,zendark-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,zendark-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,zendark-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,zendark-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,zendark-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,zendark-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,zendark-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,zendark-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,zendark-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,zendark-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,zendark-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,zendark-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,zendark-green+1))))))

(custom-theme-set-variables
 'zendark
 '(ansi-color-names-vector [zendark-bg zendark-red zendark-green zendark-yellow
                                       zendark-blue zendark-magenta zendark-cyan zendark-fg]))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'zendark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; zendark-theme.el ends here.
