;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;bidi              ; (tfel ot) thgir etirw uoy gnipleh
       ;;chinese
       ;;japanese
       ;;layout            ; auie,ctsrnm is the superior home row

       :completion
       ;; company          ; the ultimate code completion backend
       (corfu              ; complete with cap(f), cape and a flying feather!
        +icons
        +orderless
        +dabbrev)
       ;;ivy               ; a search engine for love and life
       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       (vertico            ; the search engine of the future
        +icons)

       :ui
       ;;deft              ; notational velocity for Emacs
       doom                ; what makes DOOM look the way it does
       doom-dashboard      ; a nifty splash screen for Emacs
       doom-quit           ; DOOM quit-message prompts when you quit Emacs
       (emoji              ; 🙂
        +unicode)
       hl-todo             ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       indent-guides       ; highlighted indent columns
       ligatures           ; ligatures and symbols to make your code pretty again
       ;;minimap           ; show a map of the code on the side
       modeline            ; snazzy, Atom-inspired modeline, plus API
       nav-flash           ; blink cursor line after big motions
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints             ; highlight the region an operation acts on
       (popup              ; tame sudden yet inevitable temporary windows
        +defaults)
       ;;tabs              ; a tab bar for Emacs
       (treemacs           ; a project drawer, like neotree but cooler
        +lsp)
       unicode             ; extended unicode support for various languages
       (vc-gutter          ; vcs diff in the fringe
        +pretty)
       vi-tilde-fringe     ; fringe tildes to mark beyond EOB
       ;;window-select     ; visually switch windows
       workspaces          ; tab emulation, persistence & separate workspaces
       ;;zen               ; distraction-free coding or writing

       :editor
       (evil               ; come to the dark side, we have cookies
        +everywhere)
       file-templates      ; auto-snippets for empty files
       fold                ; (nigh) universal code folding
       (format             ; automated prettiness
        +onsave)
       ;;god               ; run Emacs commands without modifier keys
       ;;lispy             ; vim for lisp, for people who don't like vim
       multiple-cursors    ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text         ; cycle region at point between text candidates
       snippets            ; my elves. They type so I don't have to
       word-wrap           ; soft wrapping with language-aware indent

       :emacs
       (dired              ; making dired pretty [functional]
        +dirvish
        +icons)
       electric            ; smarter, keyword-based electric-indent
       (ibuffer          ; interactive buffer management
        +icons)
       (undo               ; persistent, smarter undo for your inevitable mistakes
        +tree)
       vc                  ; version-control and Emacs, sitting in a tree

       :term
       eshell              ; the elisp shell that works everywhere
       ;;shell             ; simple shell REPL for Emacs
       ;;term              ; basic terminal emulator for Emacs
       vterm               ; the best terminal emulation in Emacs

       :checkers
       (syntax             ; tasing you for every semicolon you forget
        +flymake
        +icons)
       (spell              ; tasing you for misspelling mispelling
        +everywhere
        +hunspell)
       ;;grammar           ; tasing grammar mistake every you make

       :tools
       ;;ansible
       ;;biblio            ; Writes a PhD for you (citation needed)
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       (docker
        +lsp)
       editorconfig        ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       (eval               ; run code, run (also, repls)
        +overlay)
       ;;gist              ; interacting with github gists
       (lookup             ; navigate your code and its documentation
        +dictionary
        +docsets
        +offline)
       (lsp                ; M-x vscode
        +peek)
       (magit              ; a git porcelain for Emacs
        +forge)
       make                ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       pdf                 ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       ;;taskrunner        ; taskrunner for all your projects
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       tree-sitter         ; syntax and parsing, sitting in a tree...
       ;;upload            ; map local to remote projects via ssh/ftp

       :os
       (:if (featurep :system 'macos) macos)  ; improve compatibility with macOS
       ;;tty                                  ; improve the terminal Emacs experience

       :lang
       ;;agda              ; types of types of types of types...
       ;;beancount         ; mind the GAAP
       (cc                 ; C > C++ == 1
        +lsp
        +tree-sitter)
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data                ; config/data formats
       ;;(dart +flutter)   ; paint ui and not much else
       ;;dhall
       (elixir             ; erlang done right
        +lsp
        +tree-sitter)
       ;;elm               ; care for a cup of TEA?
       emacs-lisp          ; drown in parentheses
       ;;erlang            ; an elegant language for a more civilized age
       ;;ess               ; emacs speaks statistics
       ;;factor
       ;;faust             ; dsp, but you get to keep your soul
       ;;fortran           ; in FORTRAN, GOD is REAL (unless declared INTEGER)
       ;;fsharp            ; ML stands for Microsoft's Language
       ;;fstar             ; (dependent) types and (monadic) effects and Z3
       ;;gdscript          ; the language you waited for
       ;;(go +lsp)         ; the hipster dialect
       ;;(graphql +lsp)    ; Give queries a REST
       ;; (haskell         ; a language that's lazier than I am
       ;;  +lsp
       ;;  +tree-sitter)
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ; a language you can depend on
       (json               ; At least it ain't XML
        +lsp
        +tree-sitter)
       (java               ; the poster child for carpal tunnel syndrome
        +lsp
        +tree-sitter)
       (javascript         ; all(hope(abandon(ye(who(enter(here))))))
        +lsp
        +tree-sitter)
       ;;julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       ;;latex             ; writing papers in Emacs has never been so fun
       ;;lean              ; for folks with too much to prove
       ledger              ; be audit you can be
       ;;lua               ; did you know that Lua was developed in Brazil?
       (markdown           ; writing docs for people to ignore
        +grip)
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org                ; organize your plain life in plain text
        +dragandrop
        +gnuplot
        +pandoc
        +present
        +pretty)
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       (python             ; beautiful is better than ugly
        +lsp
        +pyenv
        +pyright
        +tree-sitter)
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;raku              ; the artist formerly known as perl6
       (rest               ; Emacs as a REST client
        +jq)
       ;;rst               ; ReST in peace
       (ruby               ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
        +lsp
        +rails
        +rbenv
        +tree-sitter)
       (rust               ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
        +lsp
        +tree-sitter)
       ;;scala             ; java, but good
       ;;(scheme +guile)   ; a fully conniving family of lisps
       (sh                 ; she sells {ba,z,fi}sh shells on the C xor
        +lsp
        +tree-sitter)
       ;;sml
       ;;solidity          ; do you need a blockchain? No.
       (swift              ; who asked for emoji variables?
        +lsp
        +tree-sitter)
       ;;terra             ; Earth and Moon in alignment for performance.
       (web                ; the tubes
        +lsp
        +tree-sitter)
       (yaml               ; JSON, but readable
        +lsp
        +tree-sitter)
       ;;zig               ; C, but simpler

       :email
       ;;(mu4e +org +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;emms
       ;;everywhere        ; *leave* Emacs!? You must be joking
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought

       :config
       ;;literate
       (default
        +bindings
        +gnupg
        +smartparens))
