(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ad-redefinition-action (quote accept))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#0d0f11" "#DF8C8C" "#A8CE93" "#DADA93" "#83AFE5" "#c9b4cf" "#7FC1CA" "#e6eef3"])
 '(ansi-term-color-vector
   [unspecified "#032e2e" "#c22328" "#28c223" "#c26e23" "#2378c2" "#bd23c2" "#23c2c2" "#b7c2b6"] t)
 '(blink-cursor-mode nil)
 '(byte-compile-warnings
   (quote
    (redefine callargs free-vars unresolved obsolete noruntime interactive-only)))
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(confirm-nonexistent-file-or-buffer nil)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("94554072dc495e8344cf3c1b0d9047205a14b052756c20b55dfce4af26ffc7bc" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "eacee5f1c2f46185d6f089d97b7953bd9fc5d5b773f72cc76c9fcb556eeba174" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "bc4b650c41b16b98166b35da94b366c6a9e1e7883bbf4937c897fb7bd05aa619" "31deed4ac5d0b65dc051a1da3611ef52411490b2b6e7c2058c13c7190f7e199b" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bea5fd3610ed135e6ecc35bf8a9c27277d50336455dbdd2969809f7d7c1f7d79" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "444238426b59b360fb74f46b521933f126778777c68c67841c31e0a68b0cc920" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "5cd0afd0ca01648e1fff95a7a7f8abec925bd654915153fb39ee8e72a8b56a1f" "90b7aaddf859ba6b431c252444d29bab98dd687d2f571707ff70efcb1a2e19f6" "76659fd7fc5ce57d14dfb22b30aac6cf0d4eb0a279f4131be3945d3cfff10bc6" "55ed02951e7b458e4cd18837eefa1956884c9afd22bb514f697fd1d2d1abb3d3" "7e376fb329a0e46a04e8285b0e45199a083f98c69b0e1039ec1cb1d366e66e9c" "6d401fa3c899170ce88eba7000fdefe11dcf24cfcec14d766fa4812a46d6bcf1" "39f98624caf410e66c4e03f36a1c373ea8ed9177cd9d12dfd6c0a53825599f60" "fa94f0c2ddd30df2bca56ddee6854c5926a8a67125d0c28326fd504e377563a9" "c4156b408e636a1286e0e8ed9531b4767dc2c8aa225d2012959e2a8610272cdc" "ebd976c3d91de7c6858db3ba07c52238d545a106c8fbf05192913f6d42421621" "49527c5539a221813693f5385e7acd580dfd2de89910d15dd76eb812f83637d3" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "1011be33e9843afd22d8d26b031fbbb59036b1ce537d0b250347c19e1bd959d0" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "013e87003e1e965d8ad78ee5b8927e743f940c7679959149bbee9a15bd286689" "159b754a1fb5b20d43499cdb5ef13936cedfbaabf9d70f65377a5df61ddc409f" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" "e74d80bf86c7951b1a27994faa417f7e3b4a02f7a365ed224f032bd29f5d2d6d" "930a202ae41cb4417a89bc3a6f969ebb7fcea5ffa9df6e7313df4f7a2a631434" "8fd393097ac6eabfcb172f656d781866beec05f27920a0691e8772aa2cdc7132" "c3f8f6ae4715858237ea72213fa1cd8be2f8cd84ccb265a29deafdec7d7543fe" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "65510ff6bb3cddeb9fcdc61770abcb8cbf8a15185a0b268f77c6b515650a625b" "65f7173faa84a97044d743d4bab115a6ab52bc6e6dc47612e31e4dbc39ebb1ae" "78cfbd96775588c06c4fff22573aaa5fa762ca2b8eda43cb964b7739194ed3c1" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "a234f91f9be6ed40f6ce0e94dce5cea1b9f1ccec2b9ccd42bb71c499867a3fcc" "6c82f87e3101ca5f1e8b8bc2bc2fe4d35e8428aab9c71de8a70d243b52c3a71a" "bad832ac33fcbce342b4d69431e7393701f0823a3820f6030ccc361edd2a4be4" "60e70079a187df634db25db4bb778255eaace1ef4309e56389459fb9418b4840" default)))
 '(delete-by-moving-to-trash t)
 '(delete-selection-mode t)
 '(display-line-numbers-type nil)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-interval 30)
 '(display-time-mode t)
 '(display-time-string-forms
   (quote
    ((if display-time-day-and-date
         (format "%s %s. %s " dayname day monthname)
       "")
     (format "%s:%s%s"
             (if display-time-24hr-format 24-hours 12-hours)
             minutes
             (if display-time-24hr-format "" am-pm)))))
 '(echo-keystrokes 0.5)
 '(electric-pair-mode t)
 '(fast-but-imprecise-scrolling t)
 '(fci-rule-color "#dedede")
 '(fill-column 90)
 '(frame-resize-pixelwise t)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(fringes-outside-margins nil t)
 '(global-display-line-numbers-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(global-hl-line-sticky-flag t)
 '(global-visual-line-mode t)
 '(indent-region-mode t)
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message nil)
 '(ispell-extra-args (quote ("-H -c")))
 '(ispell-local-dictionary-alist
   (quote
    (("swiss" "[a-zA-Z\\304\\326\\334\\344\\366\\337\\374]" "[^a-zA-Z\\304\\326\\334\\344\\366\\337\\374]" "[']" t
      ("-C" "-d" "swiss")
      "~latin1" iso-8859-1))))
 '(ispell-query-replace-choices t)
 '(kill-whole-line t)
 '(left-fringe-width nil t)
 '(line-spacing 0.2)
 '(linum-format " %6d ")
 '(magit-diff-use-overlays nil)
 '(major-mode (quote text-mode))
 '(mode-require-final-newline nil)
 '(mouse-drag-copy-region t)
 '(olivetti-body-width 0.8)
 '(olivetti-hide-mode-line t)
 '(org-archive-location "archive.org::datetree/* Finished Task from %s")
 '(org-export-backends (quote (ascii html icalendar md odt)))
 '(org-modules (quote (org-habit org-info org-expiry)))
 '(package-selected-packages
   (quote
    (delight bind-key org-plus-contrib olivetti ssh-agency ox-hugo-auto-export ox-hugo org-wiki org-mind-map org-index dired-filetype-face org-preview-html outline-toc company-box ivy-rich counsel flymd doom-themes web-mode php-mode comment-dwim-2 rainbow-mode magit markdown org2jekyll s poem-theme ivy mode-icons poet-theme toc-org org-expiry neotree all-the-icons-dired all-the-icons dired-sidebar dired-subtree golden-ratio-scroll-screen solarized-theme ace-window which-key todotxt-mode org-brain org-cliplink link-hint default-text-scale dashboard rainbow-delimiters diminish auto-revert htmlize powerline uniquify plantuml-mode deft ox-pandoc ac-html ac-html-bootstrap company-web zenburn-theme undo-tree smex smart-mode-line scss-mode request powershell-mode powershell php-extras org-bullets org-ac markdown-mode less-css-mode js2-mode ido-ubiquitous hl-line+ hc-zenburn-theme flycheck feature-mode f exec-path-from-shell esxml dired-details company)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(require-final-newline t)
 '(safe-local-variable-values (quote ((org-hugo-auto-export-on-save . t))))
 '(save-interprogram-paste-before-kill t)
 '(scroll-bar-mode nil)
 '(scroll-step 1)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(special-display-buffer-names (quote ("*Completions*")))
 '(tab-width 2)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(time-stamp-format "%02d.%02m.%:y %02H:%02M:%02S")
 '(tool-bar-mode nil)
 '(use-package-verbose t)
 '(vc-annotate-background "#3c4c55")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#A8CE93")
    (cons 40 "#b8d293")
    (cons 60 "#c9d693")
    (cons 80 "#DADA93")
    (cons 100 "#e2d291")
    (cons 120 "#eaca90")
    (cons 140 "#F2C38F")
    (cons 160 "#e4bea4")
    (cons 180 "#d6b9b9")
    (cons 200 "#c9b4cf")
    (cons 220 "#d0a6b8")
    (cons 240 "#d799a2")
    (cons 260 "#DF8C8C")
    (cons 280 "#c98f92")
    (cons 300 "#b39399")
    (cons 320 "#9e979f")
    (cons 340 "#556873")
    (cons 360 "#556873")))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(fixed-pitch ((t (:family "Consolas" :slant normal :weight normal :height 0.9 :width normal))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-column ((t (:background "light gray" :strike-through nil :underline nil :slant normal :weight normal))))
 '(org-column-title ((t (:background "gray" :underline t :weight bold))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:inherit default :weight bold :height 2.0 :underline nil))))
 '(org-headline-done ((t (:foreground "dim gray" :strike-through t))))
 '(org-level-1 ((t (:inherit variable-pitch :box nil :weight bold :height 1.3))))
 '(org-level-2 ((t (:inherit variable-pitch :box nil :height 1.2))))
 '(org-level-3 ((t (:inherit variable-pitch :weight bold :height 1.25))))
 '(org-level-4 ((t (:inherit variable-pitch :weight bold :height 1.1))))
 '(org-level-5 ((t (:inherit variable-pitch :weight bold))))
 '(org-level-6 ((t (:inherit variable-pitch :weight bold))))
 '(org-level-7 ((t (:inherit variable-pitch :weight bold))))
 '(org-level-8 ((t (:inherit variable-pitch :weight bold))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(taskpaper-tag ((t (:inherit font-lock-keyword-face))))
 '(variable-pitch ((t (:foundry "outline")))))
