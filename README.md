VIM DJAPY CONFIGS
=================

It is VIM configurations files for comfortable work of python/django web developers. This package allows to install and configure additional plug-ins and themes.

To install additional packages need to install [vundle](https://github.com/VundleVim/Vundle.vim).

Required
--------

Only for UNIX-like platform (Linux, FreeBSD, MacOS, etc.). You need to install: `git`, `curl`, `ctags`. 


Packages
--------

Configurations include the installation of the following packages:

- [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim) - is short for Vim bundle and is a Vim plugin manager;
- [valsorym/vim-nerdtree](https://github.com/valsorym/vim-nerdtree) - it is fork of [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) with fixed of some bugs (subjective approach);
- [valsorym/vim-bufexplorer](https://github.com/valsorym/vim-bufexplorer) - it is fork of [jlanzarotta/bufexplorer](https://github.com/jlanzarotta/bufexplorer) with improved display of open buffers (subjective approach);
- [valsorym/vim-tabs](https://github.com/valsorym/vim-tabs) - plugin for comfortable management of tabs;
- [matze/vim-move](https://github.com/matze/vim-move) - plugin allows you to move the text up/down without the need to cut/paste;
- [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - plugin allows you to set several simultaneous cursor for text editing;
- [majutsushi/tagbar](https://github.com/majutsushi/tagbar) - plugin that provides an easy way to browse the tags of the current file and get an overview of its structure.

Quick Start
-----------

Installation of base configurations is quite simple:

```
$ git clone git://github.com/valsorym/vim-djapy-configs /tmp/vim-djapy-configs
$ cd /tmp/vim-djapy-configs
$ make install
```

Installation of additional packages
-----------------------------------

*As the package manager used [vundle](https://github.com/VundleVim/Vundle.vim) plugin. See original [documentation](https://github.com/VundleVim/Vundle.vim/blob/master/README.md) about installing additional packages*.

 1.Open config file `~/.vimrc`, find line `... custom plugins ...` and add your plugins into config file:

```
...
""" Start plugin list ...
Plugin 'VundleVim/Vundle.vim'
...
""" ... custom plugins ...

""" ADD YOUR PLUGINS HERE

""" ... end plugin list.
call vundle#end()
filetype plugin indent on
...
```

2.Restart vim, and run `:PluginInstall`. You can use others commands to:

- `:PluginList`  - lists configured plugins;
- `:PluginInstall` - installs plugins; append `!` to update or just use `:PluginUpdate`;
- `:PluginSearch foo` - searches for foo; append `!` to refresh local cache;
- `:PluginClean` - confirms removal of unused plugins; append `!` to auto-approve removal.

3.The vundle bad install the colors and syntaxes. If you have installed a new themes using vundle - they will not work in the console version of vim.  Use `:PluginUpgrade` to solve this problem.

License
-------

Copy, modify and use in anywhere!

*Please, leave the links to the original plugins and solutions that you use in your configurations. Respect the work of other developers!*

