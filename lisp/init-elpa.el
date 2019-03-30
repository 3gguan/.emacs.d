(require 'package)
(package-initialize)
 
;;增加elpa源
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
						 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
						 ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
						 ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")))

(provide 'init-elpa)
