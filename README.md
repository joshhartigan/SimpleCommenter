### SimpleCommenter

KISS Commenting for Vim

SimpleCommenter is precisely what its name suggests - a simpler, smaller, and
more primitive alternative to the other commentary plugins available for Vim.
SimpleCommenter aims to be:

* Non-intrusive - only there when you need it.
* Respectful of your workflow - xkcd.com/1172/
* Simply functional - 'it just works'

### Installation

**via Vundle (recommended):**
```
Plugin "joshhartigan/SimpleCommenter"
```

**via Pathogen:**
```
cd ~/.vim/bundle && \
git clone https://github.com/joshhartigan/SimpleCommenter
```

#### Key Mappings

SimpleCommenter doesn't have a default keymapping for commenting or
uncommenting lines, so that it doesn't conflict with any keymappings that you
might already have configured.
However, this is not a big disadvantage, because setting a keymapping for the
plugin's functionality is very simple.

```vim
" mapping for SimpleCommenter - comment out line
nmap <KEY> :SimpleComment<cr>
" insert mode mapping
imap <KEY> <esc>:SimpleComment<cr>i

" mapping for SimpleCommenter - uncomment line
nmap <KEY> :SimpleUncomment<cr>
" insert mode mapping
imap <KEY> <esc>:SimpleUncomment<cr>i
```

#### Language Support

SimpleCommenter currently supports the following languages by default:

* Java
* C++
* JavaScript
* C
* Go
* Python
* Bash / Shell
* Haskell
* Lua
* Clojure
* Lisp

In the future, support for adding your own languages will be implemented.
