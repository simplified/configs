" ======================================================================================================================
" Ollie Sheridan's custom .vimrc, last updated: 2022.05.12
" ======================================================================================================================

" Background settings
" ----------------------------------------------------------------------------------------------------------------------
set history=1000                            " Store 1000 actions in history (default is 20)
set nocompatible                            " Set 'nocompatible' to ward off unexpected things that your distro might
                                            " have made, as well as sanely reset options when re-sourcing .vimrc
set confirm                                 " Instead of failing a command because of unsaved changes, instead raise a
                                            " dialogue asking if you wish to save changed files.
" Line numbers
" ----------------------------------------------------------------------------------------------------------------------
set number                                  " Show the current line number on the left
set relativenumber                          " Show the relative line number above and below the current line


" Display options
" ----------------------------------------------------------------------------------------------------------------------
set background=dark
set colorcolumn=121
set cursorline
set visualbell                              " Stop the bell, flash instead
set t_vb=                                   " And reset the terminal code for the visual bell. If visualbell is set, and
                                            " this line is also included, vim will neither flash nor beep. If visualbell
                                            " is unset, this does nothing.
set ruler                                   " Displays cursor position in the bottom right of screen
set showcmd                                 " Shows the current command in the bottom right of screen
set laststatus=2                            " Always display the status line, even if only one window is displayed
set cmdheight=2                             " Set the command window height to 2 lines, to avoid many cases of having to
                                            " "press <Enter> to continue"

" Searching
" ----------------------------------------------------------------------------------------------------------------------
set hlsearch                                " Highlight the current search string
nnoremap <esc><esc> :silent! nohls<cr>      " Turn off highlighted search matches with Esc double tap
set ignorecase                              " Use case insensitive search, except when using capital letters
set smartcase                               " Use case insensitive search, except when using capital letters


" General settings for programming
" ----------------------------------------------------------------------------------------------------------------------
filetype plugin indent on                   " Automatically detect file types.
syntax on                                   " Syntax highlighting


" Python specific display options
" ----------------------------------------------------------------------------------------------------------------------
let python_highlight_all=1
set tabstop=4                               " An indentation every four columns
set expandtab                               " Tabs are spaces, not tabs
set autoindent                              " Indent at the same level of the previous line
set shiftwidth=4                            " Use indents of 4 spaces
set softtabstop=4                           " Let backspace delete indent


" Mouse Settings
" ----------------------------------------------------------------------------------------------------------------------
set mousehide                               " Hide the mouse cursor while typing


" Disable Ex mode
" ----------------------------------------------------------------------------------------------------------------------
map q: <Nop>
nnoremap Q <nop>


" Turning off certain shortcuts
" ----------------------------------------------------------------------------------------------------------------------
vnoremap // y/<C-R>"<CR>


" Custom shortcuts ( For special keys like <ESC> use: CTRL-V <ESC> )
"-----------------------------------------------------------------------------------------------------------------------

" Comment out lines
map <C-C> 0i#<ESC>j0

" Ctrl+L to create bulleted list with hyphens
map <C-L> 0i- <ESC>A

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Search for highlighted text in Visual mode. Search using "//".
" See here for more details: https://vim.fandom.com/wiki/Search_for_visually_selected_text
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
