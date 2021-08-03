"
"   /██    /██ /██                      /██████                       /██████  /██
"  | ██   | ██|__/                     /██__  ██                     /██__  ██|__/
"  | ██   | ██ /██ /██████/████       | ██  \__/  /██████  /███████ | ██  \__/ /██  /██████
"  |  ██ / ██/| ██| ██_  ██_  ██      | ██       /██__  ██| ██__  ██| ████    | ██ /██__  ██
"   \  ██ ██/ | ██| ██ \ ██ \ ██      | ██      | ██  \ ██| ██  \ ██| ██_/    | ██| ██  \ ██
"    \  ███/  | ██| ██ | ██ | ██      | ██    ██| ██  | ██| ██  | ██| ██      | ██| ██  | ██
"     \  █/   | ██| ██ | ██ | ██      |  ██████/|  ██████/| ██  | ██| ██      | ██|  ███████
"      \_/    |__/|__/ |__/ |__/       \______/  \______/ |__/  |__/|__/      |__/ \____  ██
"                                                                                  /██  \ ██
"                                                                                 |  ██████/
"                                                                                  \______/

"------------------------------------------------------------------------------
" General Vim Settings
"------------------------------------------------------------------------------
set shell=/bin/zsh
set nocompatible              " required
set backspace=2 " make backspace work like most other programs
filetype off                  " required

" More natural vim window splitting
set splitbelow
set splitright

" Hybrid Lines
:set number relativenumber
:set nu rnu

let mapleader =" "
filetype plugin indent on    " required
set runtimepath^=~/.vim/bundle/
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

syntax on
set hlsearch
set ignorecase
set number
set mouse=a
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on 
set autoindent
filetype plugin on
au BufNewFile,BufRead *.endfile set filetype=endfile
filetype plugin indent on
colorscheme wpgtk

let g:md_pdf_viewer="zathura"
map <Down> <c-e>
map <Up> <c-y>
map <S-Down> j
map <S-Up> k

inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l

"------------------------------------------------------------------------------
" Personal Macros
"------------------------------------------------------------------------------
noremap <Leader>s :update<CR>
noremap <Leader>b :buffers<CR>:buffer<Space>
noremap <Leader>v :buffer#<CR>
noremap <Leader>r :source $MYVIMRC<CR>
noremap <Leader>f :FZF <CR>
"nnoremap <Leader>t "=strftime("%d/%m/%y %H:%M")<CR>P
nnoremap <Leader>t :ter<CR>
inoremap ,n <C-R>=strftime("%H:%M")<CR>
vnoremap <C-c> "*y :let @+=@*<CR>

"------------------------------------------------------------------------------
" Initialize Vundle(Plugin Manager)
"------------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""
"Plugins 
"""""""""
Plugin 'hanschen/vim-ipython-cell'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'deviantfero/wpgtk.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc-after'
Plugin 'ottersome/vim-pandoc-markdown-preview'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'vim-airline/vim-airline'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'valloric/youcompleteme'
Plugin 'gmarik/Vundle.vim'
" Old Plugins(might or might not use again)
"Plugin 'dylanaraps/wal.vim'
"Plugin 'jpalardy/vim-slime'
"Plugin 'mattn/emmet-vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'luochen1990/rainbow'
"Plugin 'justmao945/vim-clang'
"Plugin 'davidhalter/"jedi-vim'
"Plugin 'justmao945/vim-clang'
"Plugin 'xavierd/clang_complete'
"Plugin 'scrooloose/syntastic'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required


"------------------------------------------------------------------------------
" Goyo Settings
"------------------------------------------------------------------------------
noremap <Leader>g :Goyo<CR>
noremap <Leader>h :tabp<CR>
noremap <Leader>l :tabn<CR>

"------------------------------------------------------------------------------
" NerdTree Config
"------------------------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"------------------------------------------------------------------------------
" Airline Config
"------------------------------------------------------------------------------
let g:airline_powerline_fonts = 1

"------------------------------------------------------------------------------
" LimeLight
"------------------------------------------------------------------------------
"" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
nmap <Leader>; :Limelight!!<CR>
xmap <Leader>; :Limelight!!<CR>


"------------------------------------------------------------------------------
" YCM Config
"------------------------------------------------------------------------------
" IM USING THE AUR TO MANAGE THIS CUZ IT NEVER WORKS
let g:ycm_keep_logfiles=1
let g:ycm_log_level = 'debug'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_auto_trigger = 1

"------------------------------------------------------------------------------
" Formatting of Markdown Documents
"------------------------------------------------------------------------------
"This lets you set the max amount of characters in a row to be 80. THis makes it more
"comapct
au BufRead,BufNewFile *.md setlocal textwidth=80

"------------------------------------------------------------------------------
" ipython-cell configuration
"------------------------------------------------------------------------------
" Keyboard mappings. <Leader> is \ (backslash) by default

" map <Leader>s to start IPython
"nnoremap <Leader>s :SlimeSend1 ipython --matplotlib<CR>

" map <Leader>r to run script
nnoremap <Leader>r :IPythonCellRun<CR>
" map <Leader>R to run script and time the execution
nnoremap <Leader>R :IPythonCellRunTime<CR>
" map <Leader>c to execute the current cell
nnoremap <Leader>c :IPythonCellExecuteCell<CR>
" map <Leader>C to execute the current cell and jump to the next cell
nnoremap <Leader>C :IPythonCellExecuteCellJump<CR>
" map <Leader>l to clear IPython screen
nnoremap <Leader>l :IPythonCellClear<CR>
" map <Leader>x to close all Matplotlib figure windows
nnoremap <Leader>x :IPythonCellClose<CR>
" map [c and ]c to jump to the previous and next cell header
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

" map <Leader>h to send the current line or current selection to IPython
nmap <Leader>h <Plug>SlimeLineSend
xmap <Leader>h <Plug>SlimeRegionSend
" map <Leader>p to run the previous command
nnoremap <Leader>p :IPythonCellPrevCommand<CR>
" map <Leader>Q to restart ipython
nnoremap <Leader>Q :IPythonCellRestart<CR>
" map <Leader>d to start debug mode
nnoremap <Leader>d :SlimeSend1 %debug<CR>
" map <Leader>q to exit debug mode or IPython
nnoremap <Leader>q :SlimeSend1 exit<CR>

"------------------------------------------------------------------------------
" Latex Config
"------------------------------------------------------------------------------
autocmd BufNewFile,BufRead *.tex set syntax=tex
let g:tex_flavor = 'tex'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'xelatex'
set sr fo=roqm1 tw=90
im <C-B> <C-O>:setl sr! fo<C-R>=strpart("-+",&sr,1)<CR>=tc<CR>_<BS><Right>

	" Word count:
	autocmd FileType tex map <leader><leader>o :w !detex \| wc -w<CR>
	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,ah \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,an \begin{answer}<Enter><Enter>\end{answer}<Enter><Enter><++><Esc>3kA 
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	#autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
    autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i
    autocmd FileType tex inoremap ,sus \textsubscript{}<++><Esc>T{i


