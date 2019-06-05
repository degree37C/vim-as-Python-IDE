"兼容模式
set nocompatible

"显示行号
set nu

"设置默认编码为utf-8
set encoding=utf-8

"关闭默认的代码折叠
set nofoldenable
"高亮显示当前行
"纵向高亮
set cursorcolumn
"横向高亮
set cursorline

"=============== 配置 vim-plug =============="
"----- vim-plug 开始 -----

"指定vim-plug下载的插件存放的目录
call plug#begin("~/.vim/vimplugged")

"--- 下面是需要安装的插件的列表 ---

"python自动补全插件
Plug 'davidhalter/jedi-vim'

"文件浏览
Plug 'scrooloose/nerdtree'

"文档结构
Plug 'majutsushi/tagbar'

"经典的monokai主题
Plug 'sickill/vim-monokai'

"快速切换主题的插件
Plug 'chxuan/change-colorscheme'

" airline = powerline + minibufer
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"彩虹括号
Plug 'kien/rainbow_parentheses.vim'

call plug#end()
" ----- vim-plug结束-----



" ----- 设置主题 -----
syntax enable
"默认设置为monokai,也可以设置为其它主题
colorscheme monokai

"打开隐藏nerdtree
map <F3> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
" let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.zg', '\.bz2', '\.tar', '\.jpeg', '\.png']
" 显示书签列表
let NERDTreeShowBookmarks=1

" 显示Tagbar
nmap <F8> :TagbarToggle<CR>

" 快速切换主题，按F10切换下一个，按F9切换上一个
map <F10> :NextColorScheme<CR>
map <F9> :PreviousColorScheme<CR>

" 设置air-line主题
let g:airline_theme='powerlineish'

"顶部显示已打开文件列表
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 在打开的文件之间切换 fn 意思是 file next ;  fp 意思是 file previous
nmap fn :bn<CR>
nmap fp :bp<CR>


"调整分割窗口的大小
nmap wj :resize +3 <CR>
nmap wk :resize -3 <CR>
nmap wh :vertical resize -3 <CR>
nmap wl :vertical resize +3 <CR>

"按F5运行当前脚本
map <F5> :w !python3 <CR>


" 彩虹括号
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
