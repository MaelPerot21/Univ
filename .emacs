;                                        ; File: ~/.emacs
                                        ; Very basic Emacs configuration.
                                        ; Features: General stuff, interface customizations,
                                        ; C mode and whitespacd mode configuration.

(setq default-directory "/home/mael.perot/afs/.confs")

                                        ; General Emacs configuration
(setq debug-on-error t ; show stack trace on config error
      vc-follow-symlinks t) ; always follow symlink

                                        ; Basic interface configuration
(tool-bar-mode -1) ; hide tool bar (GUI only)
(scroll-bar-mode -1) ; hide scroll bar (GUI only)
(menu-bar-mode -1) ; hide menu bar
(global-linum-mode) ; show line numbers
(column-number-mode) ; show column number in the modeline
(blink-cursor-mode 0) ;make the cursor stop blinking

                                        ; Disable tabulations (repeated to ensure compatibility with any major mode)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

                                        ; Basic C configuration
(setq c-basic-offset 4 ; spaces of indentation
      c-default-style "bsd" ; sort of fits the coding style
      fill-column 80) ; 80 columns rule

(setq whitespace-style '(face ; show ...
                         tabs tab-mark ; the tabulations,
                         lines-tail ; lines too long (> fill-column characters),
                         trailing)) ; and trailing spaces
(global-whitespace-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(my_theme))
 '(custom-safe-themes
   '("7bf760279cdfb6f8c378c6e4a42a9c9bd9c4b7c8b821ceeab35ad5f8f416da65" "8bab54298be0636df3c65e6629e9538b7b1810541231134b8943d929f2491f21" "6439b841e7145ec4a5e691345f8c365c903597c2870d458680ba8813e2c5aaca" "e22bda644dd03e8838571c63c76171681874fe37e277f50785aa1014133838c1" "9f362e39124f34df5ab19f3cae2a2198fc031d56ee7fc190b2990fb90c9c3be7" "a0a3525bdec59aab6e08a587f2f8ac46a114c3d10031b9672d462c7ab078f17b" "5e848756d61c4e38f958e62636b6ccf3217ce0a521bc5eda8ba4f89f8c989c83" "6e36ada461fabac88e87054a88a860ff6e463e5a1d2b95b082bbb7ae5889291c" "bc36edfbc8c2ae778d8a3b77ea202afafff241b9d54586048013469e374ef5d1" "02c61b18465738cdd16685515faa03ca96fa58433695650087ed6818c32fef54" "1ac4231b6e531b14bdcc1b74e66833fba00b96c515add37244cf45d930d33c7d" "dfb7d8cd2c434061973a0391e6ef1e2f5aed96f4c4cb66fd96495ce92a600a09" "b1724e083507352b60ae425b4e1591dfa74abeaac618450acefe67b89036531f" "f78da78f46d5e6d9502d960575cb6cf798b6b683061e92d11338ae17b9fcb5c0" "b42886a74dd49887ed790681c960f937b3db0986cbf215dc258c9e7623b87481" "597cd938a603c3afa9a08fd72be42f1dd5721c5bfd9344f3510e49deeae2d553" "a36b32529e47cd70f3559c5007cc61599ca5fe71d954665b0cda0475cb320e6f" "f34765b9fb120552e6446e0ffea883d6416f01d2512b16b7c0d2f19733b546ca" "31831cca7ecbec55582c5a10cea4e6019395eb01b24ec7d1b8ac332056d50e8a" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(popup embrace auto-compile auto-complete tuareg))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun scroll-down-medium-amount ()
  (interactive)
  (scroll-down 5))
(defun scroll-up-medium-amount ()
  (interactive)
  (scroll-up 5))
(defun scroll-down-large-amount ()
  (interactive)
  (scroll-down))
(defun scroll-up-large-amount ()
  (interactive)
  (scroll-up))
(global-set-key [mouse-4] 'scroll-down-medium-amount)
(global-set-key [mouse-5] 'scroll-up-medium-amount)
(global-set-key [C-mouse-4] 'scroll-down-large-amount)
(global-set-key [C-mouse-5] 'scroll-up-large-amount)

(global-set-key [?\C-x ?w] 'delete-trailing-whitespace)
(global-unset-key [?\C-x ?h])
(global-set-key (kbd "<C-tab>") 'mark-whole-buffer)
(global-unset-key [?\C-x ?k])
(global-set-key [?\C-x ?k] 'kill-whole-line)

(setq delete-auto-save-file-if-necessary t)
(setq backup-directory-alist '(("." . "~/.backup_emacs")))

(defun mainC()
  (interactive)
  (insert "int main(void)\n{\n    \n    return 0;\n}")
  (previous-line 2)
  (indent-for-tab-command))
(global-set-key [f1] 'mainC)

(defun printf()
  (interactive)
  (insert "printf(\"%d\\n\", );")
  (backward-char 2))
(global-set-key [?\M-p] 'printf)

(defun kill-debut-line()
  (interactive)
  (kill-line)
  (beginning-of-line-text)
  (yank)
  (kill-line)
  (beginning-of-line-text))
(global-set-key [?\C-x ?h] 'kill-debut-line)

(defun insert-next()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))
(global-unset-key [?\C-x ?\C-n])

(global-set-key [?\C-x ?\C-n] 'insert-next)

(defun copy-whole-line()
 (interactive)
 (beginning-of-line-text)
 (push-mark-command 0)
 (end-of-line)
 (copy-region-as-kill beginning-of-buffer end-of-buffer))
(global-set-key [?\C-c ?\C-c] 'copy-whole-line)

(defun makefile()
 (interactive)
 (insert "CC=gcc\nCFLAGS=-std=c99 -Wall -Wextra -Werror -pedantic -Wvla\n")
 (insert "\nOBJ=.o main.o\n\n")
 (insert "test: $(OBJ)\n\t\$(CC) -o $@ $^\n\t./$@\n\n")
 (insert "leak: CFLAGS +=-g\n\leak: $(OBJ)\n\t\$(CC) -o $@ $^\n\tvalgrind --leak-check=full ./$@\n\n")
 (insert "gdb: CFLAGS +=-g\n\gdb: $(OBJ)\n\t\$(CC) -o $@ $^\n\n")
 (insert "clean:\n\t\$(RM) test leak gdb $(OBJ) vgcore*"))
(global-set-key (kbd "<C-f1>") 'makefile)

(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)

(package-initialize)
(require 'auto-complete)
(ac-config-default)

(electric-pair-mode 1)

(global-set-key [f5] 'compile)