;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package doom-themes
  :config (load-theme 'doom-gruvbox 1))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;; Language server

;;; :hook ( language-mode . lsp-deferred)
;;; first install specific languae server before (python-language server)
;;; emacs lsp mode website check it out

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7eea50883f10e5c6ad6f81e153c640b3a288cd8dc1d26e4696f7d40f754cc703" default))
 '(haskell-mode-hook '(interactive-haskell-mode company-mode))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(package-selected-packages
   '(flycheck-grammarly avy ghci-completion flycheck-haskell smartparens smartparens-config dashboard popup-kill-ring try company-ghci company-ghc lsp-haskell haskell-mode lsp-mode doom-themes ivy-rich which-key flycheck company company-mode rainbow-delimiters doom-modeline swiper ivy use-package)))

(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)))


;(custom-set-variables '(company-ghci-show-info t))


;(use-package lsp-haskell)

;; (use-package lsp-mode
;;   :commands (lsp lsp-deferred)
;;   :init
;;   (setq lsp-keymap-prefix "C-c l")
;;   :config
;;   (lsp-enable-which-key-integration t))

;;; init.el ends here


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
