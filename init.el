(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(setq debug-on-error t)

(global-set-key "\C-ck" 'kill-whole-line)

;;c-mode缩进
(setq tab-width 4)
(setq default-tab-width 4)
(setq c-default-style "linux"
           c-basic-offset 4)

;;y-n代替yes-no
(fset 'yes-or-no-p 'y-or-n-p)

;;标题栏显示buffer
(setq frame-title-format "%b@emacs")

;;支持emacs和外部程序粘贴
(setq x-select-enable-clipboard t)

;;不生成 #filename# 临时文件  
(setq auto-save-default nil)

;;不要生成临时文件
(setq make-backup-files nil)

;; 括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;去掉emacs欢迎界面
(setq inhibit-startup-message t)

;;加载elpa,否则后面的elpa插件找不到,因为elpa是在init.el之后初始化
(require 'init-elpa)

;;窗口选择功能
(require 'init-window-numbering)

;;加载site-lisp路径
(require 'init-site-lisp)

;;加载gtags功能
(require 'init-gtags)

;;显示行号
(require 'init-linum)

;;配色方案,目前用molokai
(require 'init-color-theme)

;;自动补全功能
(require 'init-auto-complete)

;;代码浏览器功能
(require 'init-ecb)

;;符号高亮功能
(require 'init-highlight)

(require 'init-gcstyle)
