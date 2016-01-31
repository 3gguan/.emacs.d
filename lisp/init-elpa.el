(require 'package)
(package-initialize)
 
;;增加elpa源
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
						 ("marmalade" . "https://marmalade-repo.org/packages/")
						 ("melpa" . "https://melpa.org/packages/")
						 ("org" . "http://orgmode.org/elpa/")
						 ("popkit" . "http://elpa.popkit.org/packages/")))

(provide 'init-elpa)
