(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(setq debug-on-error t)

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
