filetype plugin on
syntax on
autocmd FileType text setlocal textwidth=78
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
set history=200
set wildmenu " Näyttää sanan täydennyksen tab täytöllä.
set showcmd " Näytää ruudun alaosassa kesken eräisin komennon.
set scrolloff=7 " Jättää n määrän rivejä minimissään ylä;- tai alapuolelle.
set nu
set rnu
"You can make jedi-vim use tabs when going to a definition etc:

"let g:jedi#use_tabs_not_buffers = 1
"If you are a person who likes to use VIM-splits, you might want to put this in your .vimrc:
"This options could be "left", "right", "top", "bottom" or "winwidth". It will decide the direction where the split open.
"let g:jedi#use_splits_not_buffers = "left"

"Jedi automatically starts the completion, if you type a dot, e.g. str., if you don't want this:
"let g:jedi#popup_on_dot = 0
