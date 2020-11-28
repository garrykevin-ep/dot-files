imap jj <Esc>
set relativenumber

call plug#begin('~/.vim/plugged')
	" UI related
	Plug 'chriskempson/base16-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	"  Visual Guide for indents horizontal line
	Plug 'Yggdroot/indentLine'

	" For Commenting
	Plug 'preservim/nerdcommenter'

	" For syntax check
	Plug 'w0rp/ale'

	" Auto Complete Vim 
Plug 'davidhalter/jedi-vim'

call plug#end()

set tabstop=4
