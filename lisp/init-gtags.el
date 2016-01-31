;; Gtags-mode is implemented as a minor mode so that it can work with any
;; other major modes. Gtags-select mode is implemented as a major mode.
;;
;; Please copy this file into emacs lisp library directory or place it in
;; a directory (for example "~/.emacs.d") and write $HOME/.emacs like this.
;;
;;	(add-to-list 'load-path "~/.emacs.d")
;;	(autoload 'gtags-mode "gtags" "" t)
;;
;; If you hope gtags-mode is on in c-mode then please add c-mode-hook to your
;; $HOME/.emacs like this.
;;
;; (add-hook 'c-mode-hook
;;    '(lambda ()
;;       (gtags-mode 1)
;; ))
;;
;; There are two hooks, gtags-mode-hook and gtags-select-mode-hook.
;; The usage of the hook is shown as follows.
;;
;; [Setting to use vi style scroll key]
;;
;; (add-hook 'gtags-mode-hook
;;   '(lambda ()
;;      (define-key gtags-mode-map "\C-f" 'scroll-up)
;;      (define-key gtags-mode-map "\C-b" 'scroll-down)
;; ))
;;
;; [Setting to make 'Gtags select mode' easy to see]
;;
;; (add-hook 'gtags-select-mode-hook
;;   '(lambda ()
;;      (setq hl-line-face 'underline)
;;      (hl-line-mode 1)
;; ))
;;
;; (Policy of key mapping)
;; If 'gtags-suggested-key-mapping' is not set, any key mapping is not done.
;; If 'gtags-disable-pushy-mouse-mapping' is set, any mouse mapping is not done.
;;
;; Here is an example of initial file.
;; It assumed that gtags.el is installed into '$HOME/.emacs.d/lisp'.
;;
;; $ cp /usr/local/share/gtags/gtags.el $HOME/.emacs.d/lisp
;; $ vi $HOME/.emacs.d/init.el
;;
;; [$HOME/.emacs.d/init.el]
;; +----------------------------------------------------------------
;(add-to-list 'load-path "~/.emacs.d/lisp")
(autoload 'gtags-mode "gtags" "" t)
(add-hook 'gtags-mode-hook
  '(lambda ()
        ; Local customization (overwrite key mapping)
;        (define-key gtags-mode-map "\C-f" 'scroll-up)
;        (define-key gtags-mode-map "\C-b" 'scroll-down)
))
(add-hook 'gtags-select-mode-hook
  '(lambda ()
        (setq hl-line-face 'underline)
        (hl-line-mode 1)
))
(add-hook 'c-mode-hook
  '(lambda ()
        (gtags-mode 1)))
; Customization
(setq gtags-suggested-key-mapping t)
(setq gtags-auto-update t)
;; +----------------------------------------------------------------

(provide 'init-gtags)
