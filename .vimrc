
""""""""""""""'
" Misc stuff
set exrc                        "Make sure we run the vimrc
set secure                      "don't allow commandline executin in vimrc
set nocompatible                "all vim features!
set showcmd                     "show commands in statusline
set nonumber                    "no line numbers at first
"set fileformats=unix           " I want to see those ^M if I'm editing a dos file
set confirm                     "Tell me if something fucks up
set visualbell t_vb=            "Don't ring any bells
set mouse=a                     "Use the mouse in all modes
set title                       "Let VIM manage the term title
set titlestring=%t\ %y\ %r\ %m  "Set a useful term title            
set titleold=Terminal           "Get rid of that stupid flying message
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc       "Don't tab complete this much
set viminfo='20,\"50
set nu
set smd
set et
set fmr={,}
set fdm=marker
set nofen
set path=.
set nofsync
set ttyfast
set ruler
set whichwrap=b,s,h,l,<,>,[,]
set history=1000
set wildmode=longest,list,full
set wildmenu
set scrolljump=1
set scrolloff=3
set gdefault

vmap p "_dP
vmap P "_dP

" on space dehighlight
noremap <silent> <Space> :silent noh<Bar>echo<CR>


" buffer switching
nmap <silent> <F9> :bn <CR>
nmap <silent> <F10> :bp <CR>
nmap <silent> <F11> :ls <CR>
nmap <silent> <F12> :ball <CR>

""""""""""""""""""
" Text Formatting
""""""""""""""""""

set autoindent          "Auto indenting
set cindent             "auto un-indent close brackets
set cinoptions=>4       "one tab only
set tabstop=4           "Tab width
set softtabstop=4       "Soft tabstop
set shiftwidth=4        "how much to shift text when formatting
set backspace=2         "backspace over every thing
set textwidth=78        "Text width
set showmatch           "Blink to show the {} and () matches
set matchtime=3         "make it a quick blink though
set formatoptions=crq2  "Do some neat comment stuff for us
set expandtab
autocmd FileType make setlocal noexpandtab
syntax on               "Do Syntax hilighting 

""""""""""""
"Searching stuff
"set nohlsearch     "Don't hilight searches, man, I hate that
set ignorecase      "for pattern matching
set smartcase       "if I use uppercase, match case sensitive
set incsearch       "show us matches immeadiatly


"""""""""""""""
"Mappings
"
set pastetoggle=<F4>

"Run the explorer
"I used a function to get around some weird case-sensitive thing
nmap <silent> <F2> :call RunExplorer() <CR>

function! RunExplorer()
    Explore
endfunction

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

nnoremap j gj
nnoremap k gk

"Toggle line nums
nmap <silent> <F3> :set nu! <CR>

map :W :w
map :Q :q
map :E :e

" use the appropriate number of colors
if &t_Co < 16
    set t_Co=8
else
    set t_Co=16
endif

""""""""""""""
"Autoload profiles
"ah, now the real black mojo begins

"enable filetype detection
filetype plugin indent on

"for all text files, set a good textwidth
autocmd FileType text setlocal textwidth=78

"HTML profile
augroup html
    au BufRead *.shtml,*.html,*.htm set tw=78 formatoptions=tcqro2 autoindent
augroup END

"C programs
augroup cprog
    au BufRead *.cpp,*.c,*.h set formatoptions=croq sm sw=4 sts=4 cindent comments=sr:/*,mb:*,el:*/,:// | if file_readable("tags.vim") | so tags.vim | endif
augroup END

"Perl profile
augroup perl
    au BufReadPre *.pl,*.pm set formatoptions=croq sm sw=4 sts=4 cindent cinkeys='0{,0},!^F,o,O,e' " tags=./tags,tags,~/devel/tags,~/devel/CVS/bin/contrib/tags
augroup END

"Python profile
augroup python
    au BufReadPre *.py set formatoptions=croq sm sw=4 sts=4 cindent cinkeys='0{,0},!^F,o,O,e'
augroup END

autocmd BufReadPre SConstruct set filetype=python
autocmd BufReadPre SConscript set filetype=python

"Shell profile
augroup shell
    au BufRead profile,bashrc,.profile,.bashrc,.bash_*,.kshrc,*.sh,*.ksh,*.bash,*.env,.login,.cshrc,*.csh,*.tcsh,.z*,zsh*,zlog* set formatoptions=croq sm sw=4 sts=4 cindent cinkeys='0{,0},!^F,o,O,e'
augroup END

" Ctrl-L to php syntax check
autocmd FileType php noremap <C-L> :!php -l %<CR>

autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala


