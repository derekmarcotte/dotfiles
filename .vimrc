" from XB's .files2
set langmenu=en_US.UTF-8
set t_ut=                                                                      "Disable background color erase (BCE) so that color schemes render properlu when inside 256-color tmux

" interface
set ttyfast                                                                    "Fast terminal connection

set noerrorbells visualbell t_vb=                                              "Replace audio bell by a visual bell

set wildmenu                                                                   "Command-line completion operates in an enhanced mode
set wildmode=list:longest

set showcmd                                                                    "Show (partial) command in the last line of the screen
set showmode                                                                   "If in Insert, Replace or Visual mode put a message on the last line
set scrolloff=8                                                                "Minimal number of screen lines to keep above and below the cursor
set sidescrolloff=8                                                            "The minimal number of screen columns to keep to the left and to the right of the cursor

set autoread                                                                   "When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again

"" file format
set fileformat=unix                                                            "Unix EOL
set fileencoding=UTF-8                                                         "Speak UTF-8
set encoding=UTF-8                                                             "Display UTF-8

"" char management
set list                                                                       "Display unprintable characters
set backspace=indent,eol,start                                                 "Allow backspacing everything in insert mode
set iskeyword+=_,@                                                             "None of these are word dividers

set showmatch                                                                  "Show matching brackets

"" indentation
set smartindent                                                                "Do smart autoindenting when starting a new line

"" Where you are
set number                                                                     "Precede each line with its line number
set relativenumber                                                             "Show the line number relative to the line with the cursor in front of each line
set ruler                                                                      "Always show current position along the bottom
set cursorline                                                                 "Highlight the screen line of the cursor

"" Wrapping
set nowrap

"" search
set ignorecase                                                                 "Case insensitivity
set smartcase                                                                  "Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch                                                                  "While typing a search command, show where the pattern, as it was typed so far, matches
set hlsearch                                                                   "When there is a previous search pattern, highlight all its matches

"" clearing highlighted search
nnoremap <CR> :nohlsearch<cr>

inoremap jk <esc>

"" Spell
set nospell                                                                    "Disabled spelling

"" local settings
try
  source ~/.vimrc.local
catch
endtry

