set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plugin 'scrooloose/syntastic'

Plugin 'ludovicchabant/vim-gutentags'

Plugin 'majutsushi/tagbar'

Plugin 'rust-lang/rust.vim'
Plugin 'lervag/vimtex'
let g:vimtex_compiler_latexmk = {'backend' : 'nvim'}
Plugin 'tpope/vim-surround'

Plugin 'valloric/youcompleteme'
Plugin 'vimwiki/vimwiki'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'chrisbra/colorizer'
:let g:colorizer_auto_filetype='css,html,xml,sh,h,c'
call vundle#end()

filetype plugin indent on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set background=dark

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = ['syntastic-checkers-c']
let g:syntastic_h_checkers = ['syntastic-checkers-c']
let g:syntastic_cpp_checkers = ['syntastic-checkers-cpp']

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

syntax on
colorscheme onedark

set clipboard+=unnamed
nmap <F8> :Tagbartoggle<CR>
