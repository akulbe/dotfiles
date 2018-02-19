set number
syntax on
set backspace=indent,eol,start

" " Load all package now
packloadall

" " Generate help tags from all packages and ignore errors
silent! helptags ALL

" " Enable fuzzy find
set rtp+=/usr/local/opt/fzf

" " With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" " Fast saving
nmap <leader>w :w!<cr>

" " Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" " Fast editing fo the .zshrc
map <leader>z :e! ~/.zshrc<cr>

" " Fast access to fzf+Ag
nmap ; :Buffers<cr> 
nmap <leader>a :Ag<cr>
nmap <leader>f :Files<cr>

" " When vimrc is edited, reload it!
autocmd! bufwritepost vimrc source ~/.vimrc

" " airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
set laststatus=2

" Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=4
