;;;----------------------------------------
;;; init
;;;----------------------------------------

;; language
(set-language-environment 'japanese)

;; char-code
(prefer-coding-system 'utf-8)

;; load-path
(setq load-path (cons "~/.emacs.d/" load-path))
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; bin PATH
(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/usr/local/bin"
              "~/bin"
              )))

;; no start-up, back-up
(setq inhibit-startup-message t)
(setq make-backup-file nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

;; yes or no to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; buffer-menu
(global-set-key "\C-x\C-b" 'buffer-menu)

;; delete last whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; hilight line
(require 'hl-line)
(global-hl-line-mode)
(setq hl-line-face 'underline)

;; shebang +x
(add-hook 'after-save-hook 'my-chmod-script)
(defun my-chmod-script() (interactive) (save-restriction (widen)
 (let ((name (buffer-file-name)))
  (if (and (not (string-match ":" name))
           (not (string-match "/\\.[^/]+$" name))
           (equal "#!" (buffer-substring 1 (min 3 (point-max)))))
     (progn (set-file-modes name (logior (file-modes name) 73))
            (message "Wrote %s (chmod +x)" name)
    ))
)))

;; icomplete
(icomplete-mode 1)

;; partial-completion
(setq partial-completion-mode 1)

;; find-file big char small char a A
(setq completion-ignore-case t)

;; case insensitive
(custom-set-variables
 '(read-file-name-completion-ignore-case t))

;; dired
(require 'dired-x)
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;; split window
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(global-set-key (kbd "C-o") 'other-window-or-split)

;; show line and column
(column-number-mode t)
(line-number-mode t)

;; hilight ()
(show-paren-mode 1)

;; image
(auto-image-file-mode t)

;; perl mode
(defalias 'perl-mode 'cperl-mode)
(setq auto-mode-alist
      (append '(("\\.\\([pP][Llhm]\\|al\\|t\\|cgi\\|psgi\\)$" . cperl-mode))
             auto-mode-alist))
(add-hook 'cperl-mode-hook
          '(lambda()
            (cperl-set-style "PerlStyle")
            (setq indent-tabs-mode nil)
            (setq cperl-indent-level 4)
             (setq cperl-tab-always-indent t)
             (setq cperl-indent-parens-as-block t)
             (setq cperl-close-paren-offset -4)
             (setq cperl-highlight-variables-indiscriminately t)
             (setq fill-column 78)
             (setq auto-fill-mode t)
             ))

;; C-w
(defun kill-region-or-backward-kill-word ()
  (interactive)
  (if (region-active-p)
      (kill-region (point) (mark))
    (backward-kill-word 1)))
(global-set-key "\C-w" 'kill-region-or-backward-kill-word)

;; keybind
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "M-?") 'help-for-help)
(define-key global-map (kbd "C-x C-h") 'help-command)
(define-key global-map (kbd "M-b") 'backward-word)
(define-key global-map (kbd "M-f") 'forward-word)


;; tab key
(setq c-tab-always-indent t)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq indent-line-function 'indent-relative-maybe)

;; newline and indent
(global-set-key "\C-m" 'newline-and-indent)

;; C-k
(setq kill-whole-line t)
