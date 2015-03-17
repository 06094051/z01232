"cd /home/z01232/myshare/
language en_US.UTF-8 "将vim设置为英文界面                                                                                            

set nocp " 使VIM工作在不兼容模式下
filetype plugin indent on " 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
let g:mapleader=";"  "定义快捷键的前缀，即<Leader>
set foldmethod=indent "选择代码折叠类型
set foldlevel=100 "启动vim时不要自动折叠代码

set encoding=utf-8
"set termencoding=gb18030
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Tab related
set sw=4           " 自动缩进的时候，缩进尺寸为 4 个空格
set ts=4           " tab宽度为4个空格
set et             " 编辑时将tab替换为空格
set smarttab       " 当使用et将tab替换为空格之后，按下一个tab键就能插入4个空格，但要想删除这4个空格，就得按4下Backspace，很不方便。
                   " 设置smarttab之后，就可以只按一下Backspace就删除4个空格了
set expandtab
set autoindent

" Format related
set tw=120    " 超过120列自动换行
set lbr       " 不在单词中间断行
set fo+=mB    " 打开断行模块对亚洲语言支持。
              " m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。
              " B 表示将两行合并为一行的时候，汉字与汉字间不要补空格

" Display related
set t_Co=256
set laststatus=2
set nu " 显示行号
set ru " 打开标尺,显示行、列、百分比等状态
syntax on " 开启关键字上色
colorscheme molokai " 设置主题
let g:rehash256 = 1
let g:molokai_original = 1
set guifont=Inconsolata\ for\ Powerline\ h10 " 设置英文字体
set gfw=幼圆\ h10.5 " 设置中文字体
set cursorline "高亮光标所在行
set incsearch " 开启增量查找, 在执行前预览第一处匹配
set nowrap " 显示时不换行

" Edit related
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set selection=inclusive " 指定在选择文本时，光标所在位置也属于被选中的范围

" Misc
set autoread " 文件内容改变时自动加载
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来

"Map related
nnoremap <F3> <C-o>
nnoremap <F6> <C-i>

" 高亮查找开关
nnoremap <silent> <S-l> :<C-u>nohlsearch<CR><C-l>
nnoremap <silent> <F12> :TlistToggle<CR>
nnoremap <silent> <F11> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>cn :cn<CR>
nnoremap <silent> <Leader>cp :cp<CR>
nnoremap <silent> <Leader>co :copen<CR>
nnoremap <silent> <Leader>cc :cclose<CR>
nnoremap <Right> <C-D>
nnoremap <Left> <C-U>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-f> :vimgrep
nnoremap <Tab> :tag
nnoremap <Space> i<Space><Esc>l
nnoremap wm :WMToggle<CR>
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

call pathogen#infect()

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

"taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1 " 使窗口在右边

"SuperTab
let g:SuperTabDefaultCompletionType="context"

"OmniCppComplete
set completeopt=menu

"Winmanager
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

"indent_guide
let g:indent_guides_guide_size=1

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" vim-powerline
let g:Powerline_symbols = 'fancy'

"===================================Add by me z01232==========================================================
" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2


" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>


"=============================Quick Map========================================
nmap ,e :e $HOME/.vimrc  "编辑vim配置

"Tagbar - tag generation and navigation 
nmap <silent> <F4> :TagbarToggle<CR>

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_right=1 

" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 

" 设置标签子窗口的宽度 
let tagbar_width=32 

" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1

" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
  \ 'kinds' : [
    \ 'd:macros:1',
    \ 'g:enums',
    \ 't:typedefs:0:0',
    \ 'e:enumerators:0:0',
    \ 'n:namespaces',
    \ 'c:classes',
    \ 's:structs',
    \ 'u:unions',
    \ 'f:functions',
    \ 'm:members:0:0',
    \ 'v:global:0:0',
    \ 'x:external:0:0',
    \ 'l:local:0:0'
   \ ],
   \ 'sro'		: '::',
   \ 'kind2scope' : {
     \ 'g' : 'enum',
     \ 'n' : 'namespace',
     \ 'c' : 'class',
     \ 's' : 'struct',
     \ 'u' : 'union'
   \ },
   \ 'scope2kind' : {
     \ 'enum'	  : 'g',
     \ 'namespace' : 'n',
     \ 'class'	 : 'c',
     \ 'struct'	: 's',
     \ 'union'	 : 'u'
   \ }
\ }


"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>

let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '100'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_context = '-B 5 -A 3'


"Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-Z>'
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), 

  let g:user_emmet_settings = {
  \  'indentation' : '  ',
  \  'perl' : {
  \    'aliases' : {
  \      'req' : 'require '
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'warn' : "warn \"|\";",
  \    }
  \  }
  \}

  let g:user_emmet_expandabbr_key = '<c-e>'
  let g:use_emmet_complete_tag = 1

" 替换
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


"<leader>cc，注释当前选中文本，如果选中的是整行则在每行首添加 //，如果选中一行的部分内容则在选中部分前后添加分别 / 、 /； 
"<leader>cu，取消选中文本块的注释。



"=================function ============================================

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"  :'<,'>s/{pattern}/{string}/[flags] •如果在当前选中区域，[range] 也不用指定，在你键入替换命令时，vim 自动将生成
"   :3,5s/{pattern}/{string}/[flags] 指定行范围，如，第三行到第五行
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
  wa
  let flag = ''
  if a:confirm
    let flag .= 'gec'
  else
    let flag .= 'ge'
  endif
  let search = ''
  if a:wholeword
    let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
  else
    let search .= expand('<cword>')
  endif
  let replace = escape(a:replace, '/\&~')
  execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
                                                          
                                                          
                                                          
"=================help  and study ============================================                                                         
"      常用映射命令：
"      map  :全模式映射
"      nmap :normal模式映射
"      vmap :visual模式映射
"      imap :insert模式映射
" 一般格式：映射命令 按键组合 命令组合
"例子：nmap c ^i#<Esc>j
"解释：映射normal模式下的按键c为：^i#<Esc>j，就是在该行开头加上#号，然后下移一行       

 "=================  # 命令录制 (最佳技巧，ft)
" qq  #录制到q
" .. #输入一系列复杂的指令
" q   #再次按q停止录制
" @q  #执行q中存储的指令
" @@  #重复执行
" # 编辑register/录制
" \"ap #把register a中的内容贴到当前位置
" .. #现在你可以修改它了
" \"add#删除之，重新存入register a
" @a  #执行register a中的指令                                                  