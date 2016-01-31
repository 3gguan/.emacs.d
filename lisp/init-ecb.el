(load "ecb-autoloads")

(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(ecb-options-version "2.40"))
(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
)

(setq ecb-tip-of-the-day nil)

(setq myEcbVar 1)
(global-set-key (kbd "C-c e") 
 '(lambda()
  (interactive)
  (if (eq myEcbVar 1) 
  	(progn
  	  (ecb-activate)
	  (setq myEcbVar 0))

	(progn
	  (ecb-deactivate)
	  (setq myEcbVar 1))
  ))
)


;(add-hook 'c-mode-hook
;  '(lambda ()
;    (ecb-activate)
;))

(provide 'init-ecb)
