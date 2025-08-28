""" 显示行号"""
set nu

"""文件编码"""
set encoding=UTF-8

"""语法高亮"""
syntax enable
syntax on

""" 插件列表"""
call plug#begin('~/.vim/plugged')
"=== 开始菜单 ===
Plug 'mhinz/vim-startify'

"=== 底部状态栏===
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'

Plug 'morhetz/gruvbox'
" === 文件导航和浏览 ===
Plug 'preservim/nerdtree'       " 文件树侧边栏，必备！
Plug 'Xuyuanp/nerdtree-git-plugin' " 在 NERDTree 中显示 git 状态
Plug 'ryanoasis/vim-devicons'	"在NERDTree中显示文件类别图标
"Plug 'ctrlpvim/ctrlp.vim'       " 模糊文件查找，按 Ctrl+P 呼出
" 更快的 fzf (需要额外安装)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"=== 代码补全 ===
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"=== 强大的注释管理器 ===
Plug 'preservim/nerdcommenter'

call plug#end()

"""配置indentline插件"""
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"""配置gruvbox主题"""
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

"""NERDTree 配置"""
map <C-n> :NERDTreeToggle<CR> " 设置 Ctrl+n 开关文件树
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " 当只剩文件树时自动关闭
""NERDTree图标设置
" NERDTrees File highlighting
" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='.
"  a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
"   exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'.
"   a:extension .'$#'
"   endfunction
"
"   call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"   call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"   call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"   call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"   call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow',
"   '#151515')
"   call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"   call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"   call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"   call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"   call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"   call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"   call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"   call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"   call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868',
"   '#151515')
"   call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868',
"   '#151515')
"   call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868',
"   '#151515')
"   call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
"   call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868',
"   '#151515')

"""配置Airline主题"""
let g:airline_theme = "violet"
let g:airline_powerline_fonts = 1

"""配置coc.nvim补全快捷键"""
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
"这里面pumvisible函数是专门检测是否有补全窗口的

" 设置一个快捷键来切换粘贴模式
set pastetoggle=<F2>

"[无用]"""配置YouCompleteMe"""
"let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCempleteMe/.ycm_extra_conf.py'
"开启 YCM 基于标签引擎
"let g:ycm_collect_identifiers_from_tags_files=1
" 从第2个键入字符就开始罗列匹配项
"let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0
" 语法关键字补oc
"let g:ycm_seed_identifiers_with_syntax=1
