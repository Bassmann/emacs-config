;;; init.el --- Where all the magic begins
;;
;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
;; embedded in literate Org-mode files.

;; Avoid garbage collection during startup. The GC eats up quite a bit of time, easily
;; doubling the startup time. The trick is to turn up the memory threshold in order to
;; prevent it from running during startup.
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

;; Every file opened and loaded by Emacs will run through this list to check for a proper
;; handler for the file, but during startup, it won’t need any of them.
(defvar file-name-handler-alist-original file-name-handler-alist)
(setq file-name-handler-alist nil)

;; After Emacs startup has been completed, set `gc-cons-threshold' to
;; 16 MB and reset `gc-cons-percentage' to its original value.
;; Also reset `file-name-handler-alist'
(add-hook 'emacs-startup-hook
          '(lambda ()
             (setq gc-cons-threshold (* 16 1024 1024)
                   gc-cons-percentage 0.1
                   file-name-handler-alist file-name-handler-alist-original)
             (makunbound 'file-name-handler-alist-original)))

;; It may also be wise to raise gc-cons-threshold while the minibuffer is active, so the
;; GC doesn’t slow down expensive commands (or completion frameworks, like helm and ivy).
(defun doom-defer-garbage-collection-h ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun doom-restore-garbage-collection-h ()
  ;; Defer it so that commands launched immediately after will enjoy the
  ;; benefits.
  (run-at-time
   1 nil (lambda () (setq gc-cons-threshold (* 16 1024 1024)))))

(add-hook 'minibuffer-setup-hook #'doom-defer-garbage-collection-h)
(add-hook 'minibuffer-exit-hook #'doom-restore-garbage-collection-h)

;; I don't need the big icons and prefer more screen real estate. See also
;; https://sites.google.com/site/steveyegge2/effective-emacs
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Set repositories
(require 'package)
(setq-default load-prefer-newer t)
;; I want orgmode before melpa or gnu
(setq package-archives
      '(("ORG" . "https://orgmode.org/elpa/")
        ("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("ORG" . 10)
        ("GNU ELPA"     . 5)
        ("MELPA"        . 0)))

(when (version< emacs-version "27.0") (package-initialize))
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
 use-package-compute-statistics t
 use-package-verbose t)

;; Use latest Org and pin
(use-package org
  :ensure org-plus-contrib
  :custom
  (org-export-backends '(ascii html md))
  :pin ORG)

;; no-littering is useful to de-clutter my /.emacs.d directory
(setq no-littering-etc-directory
      (expand-file-name "config/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "data/" user-emacs-directory))

(use-package no-littering)
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
