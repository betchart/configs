(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 200))
(global-font-lock-mode 1)
(show-paren-mode 1)
(transient-mark-mode 1)
(normal-erase-is-backspace-mode 0)
(global-set-key "\M-g" 'goto-line)
(setq inhibit-startup-message t)
(set-face-attribute 'default (selected-frame) :height 80)
(set-default 'truncate-lines t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;set up association between file extensions and modes
;(setq auto-mode-alist
;      (append
;       '(("CMakeLists\\.txt\\'" . cmake-mode))
;       '(("\\.cmake\\'"         . cmake-mode))
;       '(("\\.h$"               . c++-mode))
;       auto-mode-alist))
;
;(autoload 'cmake-mode "~/public/emacs/cmake-mode.el" t)
