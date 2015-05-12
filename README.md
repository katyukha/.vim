My .vim directory
-----------------

To install simply clone to home dir and run:

```
cd ~
git clone https://github.com/katyukha/.vim.git .vim
ln -sf .vim/.vimrc .vimrc
cd .vim/
git submodule init
git submodule update
```

Keyboard shortcuts
------------------

|Key      | Comment                                                             |
|---------|---------------------------------------------------------------------|
| F2      | Save currently open file                                            |
| F3      | Open shell                                                          |
| F4      | Open new empty tab                                                  |
| F5      | Move to previous tab                                                |
| F6      | Move to next tab                                                    |
| F7      | Toogle line numbers                                                 |
| F8      | Toogle higlight search matches                                      |
| F9      | Toogle PyLint quickFix window                                       |
| F10     | Toogle [Tagbar](http://majutsushi.github.io/tagbar/)                |
| F11     | Toogle [NERDTree](https://github.com/scrooloose/nerdtree) window    |
| J       | Page down                                                           |
| K       | Page up                                                             |
| gs      | Show Git status                                                     |
| gd      | Show Git Diff                                                       |
| gc      | Show Git Commit                                                     |
|         |                                                                     |

----------

For generic Vim shortcuts see http://www.keyxl.com/aaa8263/290/VIM-keyboard-shortcuts.htm


Used plugins
------------

1. [NERDTree](https://github.com/scrooloose/nerdtree)
2. [NERD Commenter](https://github.com/scrooloose/nerdcommenter)
3. [Python-mode](https://github.com/klen/python-mode)
4. [TagBar](https://github.com/majutsushi/tagbar)
5. [vim-fugittive](https://github.com/tpope/vim-fugitive)
6. Others...
