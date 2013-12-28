" Softtabs, 2 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Numbers
set number
set numberwidth=5

" For better unicode handling
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

"Pathogen
execute pathogen#infect()
syntax on
"filetype plugin indent on

"NERDTree 
"auto open & close
autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nmap <C-X> :NERDTreeToggle<CR>

"Auto change to current file dir
set autochdir

"Use mouse
"set mouse=a

