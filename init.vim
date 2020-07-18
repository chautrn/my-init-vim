call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jszakmeister/vim-togglecursor'
Plug 'jiangmiao/auto-pairs'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-syntastic/syntastic'
call plug#end()

set number
set shiftwidth=0
set tabstop=4
set backspace=2
syntax on
set belloff=all

" filetype on
" filetype plugin on
" filetype indent on

map <c-c> "+y
" select all
map <c-a> ggVG 
" go back to previous cursor and center screen
map <c-o> <c-o>zz
" Java comment
map <c-j> i/**/<Esc>hi
map K 5k
map J 5j
" Java main function
command JavaMain :r ~/.config/JavaMain.txt

" vim split resizing
nnoremap <C-j> :resize +1<CR>
nnoremap <C-k> :resize -1<CR>
nnoremap <C-h> :vertical resize -1<CR>
nnoremap <C-l> :vertical resize +1<CR>

let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
	augroup END
end
