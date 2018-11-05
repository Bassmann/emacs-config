;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; Avoid garbage collection during startup. The GC eats up quite a bit
;; of time, easily doubling the startup time. The trick is to turn up
;; the memory threshold (500 MB should be sufficient) in order to
;; prevent it from running during startup.
(setq gc-cons-threshold (* 500 1024 1024)
      gc-cons-percentage 0.6)

;; After Emacs startup has been completed, set `gc-cons-threshold' to
;; 16 MB and reset `gc-cons-percentage' to its original value.
(add-hook 'emacs-startup-hook
          '(lambda ()
             (setq gc-cons-threshold (* 16 1024 1024)
                   gc-cons-percentage 0.1)))

;; Set repositories
(require 'package)
(setq-default load-prefer-newer t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; I want orgmode before melpa or gnu
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

;; Install dependencies
(unless (and (package-installed-p 'delight)
	           (package-installed-p 'bind-key)
             (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'delight t)
  (package-install 'bind-key t)
  (package-install 'use-package t))
(setq-default
 use-package-always-defer t
 use-package-always-ensure t
 use-package-compute-statistics t)

;; Use latest Org and pin
(use-package org
  :ensure org-plus-contrib
  :pin org)

;; no-littering is useful to de-clutter my /.emacs.d directory
(setq no-littering-etc-directory
      (expand-file-name "config/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "data/" user-emacs-directory))

(use-package no-littering
  :load-path "lisp/no-littering")

(require 'no-littering)

;; load up all literate org-mode files in user-emacs-directory
(mapc #'org-babel-load-file (directory-files user-emacs-directory t "\\.org$"))

;; Use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))
;;; init.el ends here
