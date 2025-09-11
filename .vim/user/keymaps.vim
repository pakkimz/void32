" '., gi, gv, go
nnoremap g. `.

" re select pasted text
nnoremap gV `[v`]

" make Y yank to end of line (like D or C)
nnoremap Y yg_

" say Nop for q and Q
noremap q <Nop>
noremap Q <Nop>

" map enter as ctrl-y in vim completion intrupt delimitMate_expand_cr
" inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" working together
" inoremap <expr> <C-e> ((pumvisible())?("\<C-e>"):("\<End>"))

" make tab look like common editor
inoremap <expr> <tab> pumvisible() ? "\<C-Y>" : "\<tab>"
inoremap <expr> <S-tab> pumvisible() ? "\<C-Y>" : "\<S-tab>"

" not working when completeopt not set to 'menu'
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("\<C-x><c-p>"))
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("\<C-x><c-n>"))

" easier scroll when wrap
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" prevent selecting and pasting from overwriting what's in the clipboard
nnoremap x "_x
nnoremap X "_x
nnoremap <Del> "_x

" recall the command-line whose beginning matches the current command-line
cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
cnoremap <expr> <c-j> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-k> wildmenumode() ? "\<c-p>" : "\<up>"

" intuitive moving buffer
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <A-l> :tabnext<CR>
nnoremap <A-h> :tabprevious<CR>

" add one space
nnoremap [s i<space><esc>l
nnoremap ]s a<space><esc>h

"easier horizontal scrolling
nnoremap zl zL
nnoremap zh zH

" re-select visual block after indenting
vnoremap < <gv
vnoremap > >gv

" paste multiple lines multiple times with simple ppppp
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" esc stuffs
inoremap <C-space> <Esc>`^
vnoremap <C-space> <Esc>gV
onoremap <C-space> <Esc>
cnoremap <C-space> <C-c>
nnoremap <C-space> <Esc>:noh<CR>

" increase value resize split defalut 1
nnoremap <silent><C-w>+ :resize +5<CR>
nnoremap <silent><C-w>- :resize -5<CR>
nnoremap <silent><C-w>> :vertical:resize +5<CR>
nnoremap <silent><C-w>< :vertical:resize -5<CR>

" make search use normal regex
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" if you want n to always search forward and N backward
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]

" play with leader
nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><leader>W :wa!<CR>
nnoremap <silent><leader>x :x<CR>
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>Q :qa!<CR>
nnoremap <silent><leader>r :bd<CR>
nnoremap <silent><leader>R :bw!<CR>
" nnoremap <silent><leader>o :%bd\|e#\|bd#<CR>
nnoremap <silent><leader>O :%bd!\|e#\|bd!#<CR>
nnoremap <leader>a :Ag!<space>
nnoremap <leader>A :AgFile!<space>
nnoremap <leader>e :e<Space>
nnoremap <leader>E :e <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <leader>c :cd<Space>
nnoremap <leader>C :cd %:p:h<CR>:pwd<CR>
" nnoremap <leader>f :find<Space>
nnoremap <leader>s :saveas<Space>
nnoremap <leader>t :tabnew<Space>
nnoremap <leader>T :tabnew<CR>

" mru and buffer
nnoremap <leader>b :b <C-z>
nnoremap <leader>m :ME <C-z>
nnoremap <leader>f :e <C-z>

" clipboard install vim-gtk or alias vim-x11 or install xsel in neovim
nnoremap gy "+y
nnoremap gY "+y$
vnoremap gy "+y
" nnoremap gd "+d
" nnoremap gD "+D
" vnoremap gd "+d
nnoremap gp "+p
nnoremap gP "+P
vnoremap gp "+p

" moving around in insert & command mode, ctrl+b & ctrl+e move beginning and end
" inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <A-h> <left>
inoremap <A-l> <right>
inoremap <A-k> <S-Left>
inoremap <A-j> <S-Right>
cnoremap <C-a> <Home>
cnoremap <A-h> <left>
cnoremap <A-l> <right>
cnoremap <A-k> <S-Left>
cnoremap <A-j> <S-Right>

" vim indentline
" nnoremap <silent><F9> :IndentLinesToggle<CR>

" delimitmate
nnoremap <silent><F10> :DelimitMateSwitch<CR>

" tagbar
nnoremap <silent><F8> :TagbarToggle<CR>

" vim easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" vim cosco
nnoremap <silent> <A-;> :CommaOrSemiColon<CR>
inoremap <silent> <A-;> <esc>:CommaOrSemiColon<CR>a

" vim syntastic
nnoremap <silent><F5> :SyntasticToggleMode<CR>
nnoremap <silent><C-s> :<C-u>call ToggleErrors()<CR>

" nerdtree
nnoremap gn :e .<CR>
nnoremap gN :e ~/<CR>
nnoremap <silent><F2> :NERDTreeFind<CR>
nnoremap <silent><C-n> :NERDTreeToggle . <Bar>wincmd p<Bar><CR>
nnoremap <silent><leader>d :bp<cr>:bd #<cr>

" vim-move mapping
vmap <A-j> <Plug>MoveBlockDown
vmap <A-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown
nmap <A-k> <Plug>MoveLineUp

" don't scroll too fast
nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-100)<CR>
