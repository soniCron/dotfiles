let mapleader = "\<Space>"
let maplocalleader = "\<Space>\<Space>"
nnoremap <SPACE> <Nop>
map ; :

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
	    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
		endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:polyglot_disabled = ['crystal']
let g:syntastic_crystal_checkers=['crystal']

call plug#begin('~/.vim/plugged')

Plug 'rhysd/vim-crystal'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-surround'
"Plug 'felixhummel/setcolors.vim'
"Plug 'qualiabyte/vim-colorstepper'
"nmap <F6> <Plug>ColorstepPrev
"nmap <F7> <Plug>ColorstepNext
"nmap <S-F7> <Plug>ColorstepReload
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
"Plug 'raimondi/delimitmate'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'freitass/todo.txt-vim'
Plug 'asciidoc/vim-asciidoc'
Plug 'chrisbra/unicode.vim'
Plug 'ap/vim-buftabline'


"if has("nvim")
	"Plug 'rliang/nvim-pygtk3', {'do': 'make install'}
"endif



call plug#end()

syntax on
let g:python_recommended_style = 0

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if has("gui_running")
"	set guifont=Fira\ Code\ Medium\ 10
	set guifont=Terminus\ 9
	set guioptions-=T
endif
if has("termguicolors")
	"let g:indent_guides_guide_size = 1
	"let g:indent_guides_start_level = 2
	"let g:indent_guides_color_change_percent = 3
	"let g:indent_guides_enable_on_vim_startup = 1
	set termguicolors
endif


nmap <C-V> "+gP
imap <C-V> <ESC>l<C-V>a
vmap <C-C> "+y

map <C-H> :bprevious<ENTER>
map <C-L> :bnext<ENTER>
"map <C-W> :bd<ENTER>
map <C-/> :NERDTreeToggle<ENTER>
map <C-S> :w<ENTER>
map <C-Q> :bd<ENTER>
"nmap <TAB> <C-W>w
nmap <TAB> :NERDTreeToggle<ENTER>


"else
"vmap <C-C> "+y
"nmap <C-V> "+gP
"imap <C-V> <ESC><C-V>a
	"	colorscheme molokai

"colorscheme molokai
set background=dark
"colorscheme gruvbox
"colorscheme Benokai
"colorscheme molokai
colorscheme onedark
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
autocmd VimEnter * :RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

"set showtabline=2
"let g:lightline#bufferline#shorten_path = 0

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark']],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

set number
set relativenumber
set tabstop=4
set noexpandtab
set shiftwidth=4
set laststatus=2
set autoindent
set smartindent
set softtabstop=4
let g:pymode_indent = 0
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none
set complete-=i
set incsearch
set hlsearch
set scrolloff=10
set sidescrolloff=5
set display+=lastline
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set showbreak=↪\
set autoread
set history=1000
set hidden
"set conceallevel=2
set cursorline
"hi CursorLine   cterm=NONE ctermbg=0 guibg=#101010
filetype plugin on
set mouse=a
set undofile
set undodir=~/.nvim/undo
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let branch = fugitive#head()
      return branch !=# '' ? mark.branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

function! LightlineBufferline()
  call bufferline#refresh_status()
  return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
