(setq exec-path (split-string (getenv "PATH") ":"))
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://stable.melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpastable" url) t))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize) ;; You might already have this line
(package-refresh-contents)

(package-install 'quelpa)
(require 'quelpa)
(quelpa '(ox-tufte :repo "jcouyang/ox-tufte" :fetcher github))
(package-install 'org-plus-contrib)
(package-install 'scala-mode)
(package-install 'haskell-mode)
(package-install 'htmlize)
(package-install 'color-theme-modern)
(package-install 'clojure-mode)
(package-install 'purescript-mode)
