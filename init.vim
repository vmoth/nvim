set number                     " Show current line number
set relativenumber             " Show relative line numbers
set smartindent
set autoindent
set clipboard=unnamed
set encoding=utf-8
set nocompatible
set listchars=tab:\|\ 
set list
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" 定义快捷键的前缀，即<Leader>
let mapleader=","
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
" 设置快捷键将系统剪贴板内容粘贴至 vim
" 定义快捷键关闭当前分割窗口
nmap <Leader>jj :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
"nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启实时搜索功能
set incsearch
set nohlsearch
" 搜索时大小写不敏感
set ignorecase
" vim 自身命令行模式智能补全

set wildmenu
set colorcolumn=80

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" vundle 环境设置
call plug#begin('~/.config/plug')
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
"call vundle#begin()
"Plug 'VundleVim/Vundle.vim'
"Plug 'leoluz/nvim-dap-go'
"Plug 'mfussenegger/nvim-dap'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'tomasr/molokai'
Plug 'liuchengxu/vista.vim'
Plug 'tpope/vim-commentary'
"Plug 'Chiel92/vim-autoformat'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/phd'
Plug 'tpope/vim-surround'
Plug 'rakr/vim-one'
Plug 'tpope/vim-sleuth'
"Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lukas-reineke/indent-blankline.nvim'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
"Plug 'derekwyatt/vim-fswitch'
"Plug 'kshenoy/vim-signature'
"Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plug 'majutsushi/tagbar'
"Plun 'vim-scripts/indexer.tar.gz'
"Plug 'vim-scripts/DfrankUtil'
"Plug 'vim-scripts/vimprj'
"Plug 'dyng/ctrlsf.vim'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'scrooloose/nerdcommenter'
"Plug 'vim-scripts/DrawIt'
"Plug 'SirVer/ultisnips'
"Plug 'Valloric/YouCompleteMe'
"Plug 'derekwyatt/vim-protodef'
Plug 'scrooloose/nerdtree'
"Plug 'fholgado/minibufexpl.vim'
Plug 'Shougo/vimproc.vim',
"Plug 'kana/vim-operator-user',
"Plug 'rhysd/vim-clang-format',
Plug 'gcmt/wildfire.vim'
"Plug 'sjl/gundo.vim'
Plug 'Lokaltog/vim-easymotion'
"Plug 'suan/vim-instant-markdown'
Plug 'lilydjwg/fcitx.vim'
Plug 'vim-scripts/findstr.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-test/vim-test'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
" Use release branch (Recommend)
" " Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"---
Plug 'neovim/nvim-lspconfig'
Plug 't9md/vim-choosewin'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'windwp/nvim-autopairs'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'mfussenegger/nvim-jdtls'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'nvim-lua/popup.nvim'
Plug 'ThePrimeagen/harpoon'
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"---
"Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
"Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'Yggdroot/LeaderF'
" 插件列表结束
call plug#end()
"call vundle#end()
filetype plugin indent on

fun! GotoWindow(id)
    call win_gotoid(a:id)
    "MaximizerToggle
endfun

set backspace=2
let g:syntastic_java_checkers = []
" 配色方案
set background=dark
colorscheme dracula
"colorscheme gruvbox
" 禁止光标闪烁
" set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
autocmd VimEnter * call ToggleFullscreen()
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
"set hlsearch
" 设置 gvim 显示字体
"set guifont=Consolas:h11:cANSI
set guifont=Fira\ Mono\ for\ Powerline:h13
"set guifont=agave\ Nerd\ Font
"set guifont=agave\ Nerd\ Font\ Mono:h13
"set guifont=Yuanti\ SC:h13
"set guifont=Source\ Code\ Pro\ for\ Powerline:h13
"set guifont=Input\ Mono:h13
"g:Powerline_symbols = 'fancy'
"let g:airline_powerline_fonts = 1

" 禁止折行
set nowrap
" 设置状态栏主题风格
"let g:Powerline_colorscheme='solarized256'
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
"syntax keyword cppSTLtype initializer_list
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" 基于缩进或语法进行代码折叠
" 启动 vim 时关闭折叠代码
set nofoldenable
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
nmap <Leader>fs :NERDTreeFocus<CR>

nmap <Leader>ff :CtrlP<CR>
"nmap <Leader>fm :Autoformat<CR>
nmap <leader>aa :CocAction<CR>
nmap <leader>sk :resize +10<CR>
nmap <leader>sj :resize -10<CR>
nmap <leader>sh :vertical resize +10<CR>
nmap <leader>sl :vertical resize -10<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
" 正向遍历同名标签
"nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
"nmap <Leader>tp :tprevious<CR>

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
"let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
"let Findstr_Default_Filelist = '*.c *.cpp *.h *.hpp'

" Ensure the buffer for building code opens in a new view
set switchbuf=useopen,split

"let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
" Debugger remaps
nnoremap <leader>mm :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dy :call <SID>StartDebugging()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

nmap <leader>nf :NERDTreeFind<CR>

nmap <F1> :CocCommand java.debug.vimspector.start<CR>

" Thanks to https://forums.handmadehero.org/index.php/forum?view=topic&catid=4&id=704#3982
" error message formats
" Microsoft MSBuild
set errorformat+=\\\ %#%f(%l\\\,%c):\ %m
" Microsoft compiler: cl.exe
set errorformat+=\\\ %#%f(%l)\ :\ %#%t%[A-z]%#\ %m
" Microsoft HLSL compiler: fxc.exe
set errorformat+=\\\ %#%f(%l\\\,%c-%*[0-9]):\ %#%t%[A-z]%#\ %m
 
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6 

function! NearestMethodOrFunction()
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

function! DoBuildBatchFile()
    AsyncRun ./make.sh
    " Open the output buffer
    "echo 'Build Complete'
    "let firstLine = get(b:, 'vista_nearest_method_or_function', '')
    "let wordUnderCursor = expand("<cword>")
    "echo 'hello'
endfunction

function! RunProject()
    AsyncRun ./start.sh
endfunction
 
 
" Set F7 to build. I like this since I use visual studio with the c++ build env
nnoremap <Leader>m :call DoBuildBatchFile()<CR>
nnoremap <Leader>r :call RunProject()<CR>
map <silent> <F6> :call DoBuildBatchFile()<CR>
 
"Go to next error
nnoremap <Leader>n :cn<CR>
"Go to previous error
nnoremap <Leader>b :cp<CR>
map <F8> :let mycurf=expand("<cfile>")<cr><c-w> w :execute("e ".mycurf)<cr><c-w>p
nnoremap <Leader>fm :call CocAction('runCommand', 'prettier.formatFile')<CR>
vmap <leader>f  <Plug>(coc-format-selected)<CR>


"" coc config
"let g:coc_global_extensions = [
"  \ 'coc-snippets',
"  \ 'coc-pairs',
"  \ 'coc-tsserver',
"  \ 'coc-eslint', 
"  \ 'coc-prettier', 
"  \ 'coc-json', 
"  \ 'coc-java', 
"  \ ]
"" ctrlp
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

noremap <c-space> <NOP>
let s:jdt_ls_debugger_port = 0
function! s:StartDebugging()
  if s:jdt_ls_debugger_port <= 0
    " Get the DAP port
    let s:jdt_ls_debugger_port = youcompleteme#GetCommandResponse(
      \ 'ExecuteCommand',
      \ 'vscode.java.startDebugSession' )

    if s:jdt_ls_debugger_port == ''
       echom "Unable to get DAP port - is JDT.LS initialized?"
       let s:jdt_ls_debugger_port = 0
       return
     endif
  endif

  " Start debugging with the DAP port
  call vimspector#LaunchWithSettings( { 'DAPPort': s:jdt_ls_debugger_port } )
endfunction

""" coc config

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <M-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
"
"" Make <CR> auto-select the first completion item and notify coc.nvim to
"" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  elseif (coc#rpc#ready())
"    call CocActionAsync('doHover')
"  else
"    execute '!' . &keywordprg . " " . expand('<cword>')
"  endif
"endfunction
"
"" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)
"
"" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder.
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Map function and class text objects
"" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"
"" Remap <C-f> and <C-b> for scroll float windows/popups.
"" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
"nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"
"" NeoVim-only mapping for visual mode scroll
"" Useful on signatureHelp after jump placeholder of snippet expansion
"if has('nvim')
"  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
"  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
"endif
"
"" Use CTRL-S for selections ranges.
"" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')
"
"" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
"" Add (Neo)Vim's native statusline support.
"" NOTE: Please see `:h coc-status` for integrations with external plugins that
"" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latgradletestest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
"
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn|build)$',
"  \ 'file': '\v\.(exe|so|dll|class|jar)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }
"
""------------for vista
"function! NearestMethodOrFunction() abort
"  return get(b:, 'vista_nearest_method_or_function', '')
"endfunction
"
"function! CocFunc()
"    let currentFunctionSymbol = get(b:, 'coc_current_function', '')
"    return currentFunctionSymbol !=# '' ? "\uf6a6 " .currentFunctionSymbol : ''
"endfunction
"
""set statusline+=%{NearestMethodOrFunction()}
"set statusline+=%{CocFunc()}
"
"" By default vista.vim never run if you don't call it explicitly.
""
"" If you want to show the nearest function in your statusline automatically,
"" you can add the following line to your vimrc
"autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)
let test#java#runner = 'gradletest'
let test#go#runner = 'ginkgo'

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require'telescope.builtin'.buffers{ show_all_buffers = true }<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

nnoremap <leader>aa <Cmd>lua require('jdtls').code_action()<CR>



nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <leader>K <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap <leader><C-k> <cmd>lua vim.lsp.buf.signature_help()<cr>
nnoremap <leader><space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<cr>
nnoremap <leader><space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>
nnoremap <leader><space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>
nnoremap <leader><space>D <cmd>lua vim.lsp.buf.type_definition()<cr>
nnoremap <leader><space>rn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <leader><space>ca <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <leader><space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>
nnoremap <leader>[d <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <leader>]d <cmd>lua vim.lsp.diagnostic.goto_next()<cr>
nnoremap <leader><space>q <cmd>lua vim.lsp.diagnostic.set_loclist()<cr>
nnoremap <leader><space>f <cmd>lua vim.lsp.buf.formatting()<cr>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
tnoremap <Esc> <C-\><C-n>

nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <F9> :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>lb :lua require'dap'.list_breakpoints()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

nnoremap <leader>df <Cmd>lua require'jdtls'.test_class()<CR>
nnoremap <leader>dn <Cmd>lua require'jdtls'.test_nearest_method()<CR>

nnoremap <silent> <leader>rt :TestNearest -i<CR>
nnoremap <silent> <leader>dt :TestNearest -i --debug-jvm<CR>
nnoremap <silent> <leader>ul :lua require("dapui").toggle()<CR>

nnoremap <silent> <leader>gc :lua require('jdtls').compile()<CR>
nnoremap <silent> <leader>gu :lua require('jdtls').update_project_config()<CR>
nnoremap <silent> <leader>gj :lua require('jdtls').jol()<CR>
nnoremap <silent> <leader>gp :lua require('jdtls').javap()<CR>
nnoremap <silent> <leader>gs :lua require('jdtls').jshell()<CR>
"
"lua require('dap-go').setup()
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
nmap <silent> t<C-n> :TestNearest<CR>
function! DebugNearest()
  let g:test#go#runner = 'delve'
  TestNearest
  unlet g:test#go#runner
endfunction
nmap <silent> t<C-d> :call DebugNearest()<CR>

set completeopt=menu,menuone,noselect
nmap  -  <Plug>(choosewin)
map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

nnoremap <C-j> :cnext<CR>zz
nnoremap <C-k> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>x :silent !chmod +x %<CR>

let g:the_primeagen_qf_l = 0
let g:the_primeagen_qf_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:the_primeagen_qf_g == 1
            let g:the_primeagen_qf_g = 0
            cclose
        else
            let g:the_primeagen_qf_g = 1
            copen
        end
    else
        if g:the_primeagen_qf_l == 1
            let g:the_primeagen_qf_l = 0
            lclose
        else
            let g:the_primeagen_qf_l = 1
            lopen
        end
    endif
endfun
