"	http://www.cnblogs.com/magic-chen/archive/2012/03/21/2410313.html
"	http://blog.csdn.net/wooin/article/details/1858917
"===============================================================================
"        Filename: vimrc
"          Author: Wu Yin(吴垠)
"           Email: lazy_fox#gmail.com
"        Homepage: http://blog.csdn.net/wooin
"         Created: 2007-10-26
source $VIMRUNTIME/mswin.vim
behave mswin


"--------------------------------------------------------------
" 模仿MS Windows中的快捷键
"--------------------------------------------------------------
"{
" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
"	vnoremap <C-Insert> "+y
"	vmap <C-c> "yy
"	vmap <C-x> "yd
"	nmap <C-v> "yp 
"	nmap <C-V> "+p 
"	nmap <C-a> ggvG$
"	noremap <C-Z> u
"	inoremap <C-Z> <C-O>u
"	noremap <C-Y> <C-R>
"	inoremap <C-Y> <C-O><C-R>
"	" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w
" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>
" 模仿MS Windows中的保存命令: Ctrl+S
" }

"--------------------------------------------------------------
" 我的惯用配置（tab/space）
"--------------------------------------------------------------
"{
"imap <C-s> <Esc>:wa<cr>i<Right>
"nmap <C-s> :wa<cr>
map <F3> :NERDTreeToggle<CR>
map <space><left> <esc>:NERDTree<CR> "regenerate NERDTree
map <F4> :Tlist<CR>
map <space><right> <esc>:Tlist<CR>
map <F5> :!gnome-terminal &<CR>
map <tab><left> <ESC>:q!<return>
map <tab><right> <ESC>:w!<return>
map <tab><up> <ESC>:bp<RETURN>
map <tab><down> <ESC>:bn<RETURN>
map	<tab><pageup> <ESC>:bn<Bar>
			\bd # <Bar>
			\bp<RETURN>
map	<tab><pagedown> <ESC>:bp<Bar>
			\bd # <Bar>
			\bn<RETURN> 
map <SPACE><pagedown> <ESC>:w !sudo tee %<RETURN>
map <space><pageup> <ESC>:qa!<return>
map <space><up> <ESC>:!gnome-terminal &<cr><return>
map <space><down> <ESC>:!pcmanfm . &<cr><return>
" }

"--------------------------------------------------------------
" 界面相关，如tab/list/cursor/nu/wrap显示方式
"--------------------------------------------------------------
"{
set tabstop=4      " 设置tab键的宽度
set backspace=2     " 设置退格键可用
set nu!             " 显示行号
"set vbt_vb=        " vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
"set wrap           " 自动换行
set nowrap         " 不自动换行
set linebreak       " 整词换行
set whichwrap=b,s,<,>,[,]       " 光标从行首和行末时可以跳到另一行去
set list                  " 显示制表符
set listchars=tab:\|\ ,		" 显示Tab符，并且使用一高亮竖线代替
"set cursorline          "显示当前行
"set listchars = tab:>-,trail:- " 将制表符显示为'>---',将行尾空格显示为'-'
"set listchars=tab:./ ,trail:.   " 将制表符显示为'.   '
set autochdir                   " 自动设置目录为正在编辑的文件所在的目录
set hidden          " 没有保存的缓冲区可以自动被隐藏
set scrolloff=5
"}

"--------------------------------------------------------------
" 查找/替换相关的设置
"--------------------------------------------------------------
"{
set hlsearch        " 高亮显示搜索结果
"set incsearch       " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
" 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
" 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
" 找要匹配的单词时，别忘记回车
set gdefault        " 替换时所有的行内匹配都被替换，而不是只有第一个
"}

"--------------------------------------------------------------
" 编程相关的设置 自动补全等
"--------------------------------------------------------------
"{
set completeopt=longest,menu    " 关掉智能补全时的预览窗口
"filetype plugin indent on       " 加了这句才可以用智能补全
"	随便找一个有成员变量的对象, 比如"parmp", 进入Insert模式, 将光标放在"->"后面, 
"	然后按下"Ctrl+X Ctrl+O", 此时会弹出一个下列菜单, 显示所有匹配的标签, 如下图:
"	:set tags=/home/nfs/microwindows/src/tags
syn on              " 打开语法高亮
set showmatch       " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
"	set smartindent     " 智能对齐方式
set shiftwidth=2    " 换行时行间交错使用4个空格
set noautoindent      " 自动对齐
"	set ai!             " 设置自动缩进
"}

"--------------------------------------------------------------
" 代码折叠
"--------------------------------------------------------------
"{
set foldmarker={,}
set foldmethod=marker 
"快速打开折叠:zo hl/l/h
"循环折叠zM
"循环展开zr
"	set foldopen=all 
"	set foldclose=all "自动关闭折叠
set foldlevel=0
"set foldmethod=syntax
"set foldlevel=100       " Don't autofold anything (but I can still fold manually)
"set foldopen-=search   " don't open folds when you search into them
"set foldopen-=undo     " don't open folds when you undo stuff
"set foldcolumn=4
"nmap hl <esc>:foldopen<cr>
"nmap lh <esc>:foldclose<cr>
"}

"--------------------------------------------------------------
" 窗口操作的快捷键
"--------------------------------------------------------------
"{
nmap wv     <C-w>v     " 垂直分割当前窗口
nmap wc     <C-w>c     " 关闭当前窗口
nmap ws     <C-w>s     " 水平分割当前窗口
"nmap wv     <C-w>v     " 垂直分割当前窗口
"nmap wc     <C-w>c     " 关闭当前窗口
nmap ws     <C-w>s     " 水平分割当前窗口
nmap wj		<C-w>h
nmap w1     <C-w>h <C-w>h
nmap w2     <C-w>l <C-w>l
nmap wk		<C-w>l
nmap wJ		<C-w>H
nmap wK		<C-w>L
"}

"--------------------------------------------------------------
" GVIM窗口边框和菜单隐藏
"--------------------------------------------------------------
"{Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
"}

"--------------------------------------------------------------
" TagList :Tlist
"--------------------------------------------------------------
"{
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window=1
"let Tlist_Use_SingleClick= 1 " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
let Tlist_Auto_Open=1 "在启动VIM后，自动打开taglist窗口
let Tlist_Process_File_Always=1 "taglist始终解析文件中的tag，不管taglist窗口有没有打开
let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_WinWidth = 25 " 40 cols wide
let NERDTreeWinSize= 23
"}

"--------------------------------------------------------------
" QuickFix
"--------------------------------------------------------------
"{
nmap <F6> :cn<cr>   " 切换到下一个结果
nmap <F7> :cp<cr>   " 切换到上一个结果
"}

"--------------------------------------------------------------
" WinManager :WMToggle
"--------------------------------------------------------------
"{
let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <C-w><C-b> :BottomExplorerWindow<cr> " 切换到最下面一个窗格
"nmap <C-w><C-f> :FirstExplorerWindow<cr>   " 切换到最上面一个窗格
nmap wm :WMToggle<cr> " 是nomal模式的命令，不是Ex模式的
"}

"--------------------------------------------------------------
" MiniBufExp
"--------------------------------------------------------------
"{
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"}

"--------------------------------------------------------------
" cscope
"--------------------------------------------------------------
"{
cs add /home/nfs/microwindows/src/cscope.out /home/nfs/microwindows/src
:set cscopequickfix=s-,c-,d-,i-,t-,e-
:set cscopetag
" 按下面这种组合键有技巧,按了<C-_>后要马上按下一个键,否则屏幕一闪
" 就回到nomal状态了
" <C-_>s的按法是先按"Ctrl+Shift+-",然后很快再按"s"
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<cr><cr> :cw<cr>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<cr><cr> :cw<cr>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<cr><cr> :cw<cr>
"nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"}

"--------------------------------------------------------------
" Grep
"--------------------------------------------------------------
"直接按下<F3>键来查找光标所在的字符串
" nnoremap <silent> <F3> :Rgrep<CR>

"--------------------------------------------------------------
" A
"--------------------------------------------------------------
nnoremap <silent> <F12> :A<CR>

"--------------------------------------------------------------
" NERD_commenter
"--------------------------------------------------------------
let NERD_c_alt_style = 1    " 将C语言的注释符号改为//, 默认是/**/

"--------------------------------------------------------------
" SuperTab :SuperTabHelp
"--------------------------------------------------------------
"{
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"}

"--------------------------------------------------------------
" CVim :help csupport
"--------------------------------------------------------------
"{
let g:C_Comments = "no"         " 用C++的注释风格

let g:C_BraceOnNewLine = "no"   " '{'是否独自一行 '}'
let g:C_AuthorName = "Wu Yin"
let g:C_Project="F9"
let g:Cpp_Template_Function = "c-function-description-wuyin"
let g:C_TypeOfH = "c"           " *.h文件的文件类型是C还是C++
" if filetype is C
"   TODO
" fi
" }

"--------------------------------------------------------------
" 重新进行键盘映射，减少进入插入模式的方法
"--------------------------------------------------------------
"{
nmap C <esc>:something<cr>
nmap c <esc>:something<cr> 
nmap I <esc>:something<cr>  "原本是行首添加,可以用0i替代
nmap A <esc>:something<cr>  "原本是行尾添加,可以用$a替代
nmap O <esc>:something<cr>  "本是光标上面添加一行，可以用shift+o替代
nmap <S-j> <esc>:something<cr> "shift+j=J，只用后者即可
nmap <S-k> <esc>:something<cr> "shift+k不用
nmap H <esc>:something<cr>
nmap K <esc>:something<cr> 
nmap J <esc>:something<cr> 
nmap L <esc>:something<cr>
nmap r <esc>:something<cr>  "不要替换模式
nmap R <esc>:something<cr> 
nmap u <esc>:something<cr>  “ctrl z代替u
nmap U <esc>:something<cr>  “ctrl z代替u
nmap S <esc>:echo<cr>"原本是删除行并且插入，可以用ddo或者dd<S-o>或者cc替代。现在用来向下翻页
map <F1> :something<CR>
imap <F1> :something<CR>
"}

"--------------------------------------------------------------
" 注释代码
"--------------------------------------------------------------
"{
"vmap <C-S-P>    dO#endif<Esc>PO#if 0<Esc>
vmap <C-S-P>    :s/^/\/\//<Esc>
nmap <C-S-P>    :s/^/\/\//<Esc>
vmap <C-S-L>    :s/^ *\/\///<Esc>
nmap <C-S-L>    :s/^ *\/\///<Esc>
"vmap <C-S-o>    :s/^/"/<Esc>
"}

"--------------------------------------------------------------
" 文件编码
"--------------------------------------------------------------
"{ 编码设置
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
" 设置文字编码自动识别
set fencs=ucs-bom,utf-8,cp936,gb18030,gb2312,big5,euc-jp,euc-kr,ucs,latin1
set ffs=unix,dos,mac
set ff=unix						    "设置文件格式为UNIX格式
" 当文件在外部被修改时，自动读取
set autoread 
" 不备份文件
set nobackup
set nowritebackup
"}

"--------------------------------------------------------------
" 语法/缩进相关indent/syntax
"--------------------------------------------------------------
"{
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
"filetype indent on           " 针对不同的文件类型采用不同的缩进格式
"filetype plugin on           " 针对不同的文件类型加载对应的插件
"filetype plugin indent on    "智能补全
"}

"{
" 一直启动鼠标
set mouse=a
" 设置mapleader
let mapleader = ";"
let g:mapleader = ";"
" 快速重载配置文件
map <leader>s :source ~/.vimrc<cr> 
map <leader>e :e! ~/.vimrc<cr>
" 命令窗口大小
set cmdheight=1
" 显示行号
set number
" 标签文件tags
set tags=tags; 
set autochdir 
"matchit 在html标签里跳转
runtime macros/matchit.vim 
filetype plugin on 
"--------------------------------------------------------------
" mark书签配置
"用nh去掉查找后的高亮
nmap nh :noh<cr>
"}

"--------------------------------------------------------------
"标签操作
"--------------------------------------------------------------
"{
nmap tc	:tabc<return>		"关闭标签
nmap tt	:tabnew<return>		"打开标签
nmap tn	:tabnext<cr><return>"打开标签
nmap tp	:tabp<return>		"上个标签
"新建标签
nmap <C-N> :tabnew<CR>
"用Ctrl+PageUp/PageDown切换标签页
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
"}

"--------------------------------------------------------------
" 状态栏相关的设置
"--------------------------------------------------------------
"{
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 状态行显示的内容 [包括系统平台、文件类型、坐标、所占比例、时间等]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %y%r%m%*%=\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
set laststatus=2    " always show the status line
set ruler           " 在编辑过程中，在右下角显示光标位置的状态行
"}

"--------------------------------------------------------------
" 主题设置
"--------------------------------------------------------------
"{
colorscheme summerfruit256 " darkZ adaryn
set guifont=DejaVu\ Sans\ mono\ 9
set background=dark
"}

"--------------------------------------------------------------
"命令提示
"--------------------------------------------------------------
"mode{
":map 普通，可视模式及操作符等待模式
":vmap 可视模式
":omap 操作符等待模式
":map! 插入和命令行模式
":imap 插入模式
":cmap 命令行模式
"}

"cscope{
": cscope -Rbkq<回车>
"2.3.1.2 R 表示把所有子目录里的文件也建立索引
"2.3.1.3 b 表示cscope不启动自带的用户界面，而仅仅建立符号数据库
"2.3.1.4 q 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
"2.3.1.5 k 在生成索引文件时，不搜索/usr/include目录
"2.3.2、使用cs find 查找[3]（也可以简化写成 cs f）后面添加需要得字符串类型：
"c:Find functions calling this function//查找调用本函数的函数
"d:Find functions called by this function //查找本函数调用的函数
"e:Find this egrep pattern//查找egrep模式，相当于egrep功能，但查找速度快多了
"f:Find this file //查找并打开文件，类似vim的find功能
"g:Find this definition//查找函数、宏、枚举等定义的位置，类似ctags的功能
"i:Find files #including this file //查找包含本文件的文件
"s:Find this C symbol //查找C语言符号，即查找函数名、宏、枚举值等出现的地方
"t:Find assignments to //查找指定的字符串
"例如：使用cscope查找do_fork函数的定义,在vim命令行下执行 :cs f g do_fork
"}

"fold{
"vim的折叠功能。。。我记得应该是6版出来的时候才推出的吧。这个对于写程序的人来说，非常有用。
"zfap -> 按照段落折叠 (fold by paragraph)
"zo -> 打开一个折叠 (open fold)
"zc -> 关闭一个折叠 (close fold)
"zf -> 创建折叠 (create fold) 这个可以用v视觉模式，可以直接给行数等等
"zr -> 打开一定数量的折叠，例如3rz (reduce the folding by number like 3zr)
"zm -> 折叠一定数量（之前你定义好的折叠） (fold by number)
"zR -> 打开所有的折叠 (open all fold)
"zM -> 关闭所有的摺叠 (close all fold)
"zn -> 关闭折叠功能 (disable fold)
"zN -> 开启折叠功能 (enable fold)
"zO -> 将光标下所有折叠打开 (open all folds at the cursor line)
"zC -> 将光标下所有折叠关闭 (close all fold at cursor line)
"zd -> 将光标下的折叠删除，这里不是删除内容，只是删除折叠标记 (delete fold at
"cursor line)
"zD -> 将光标下所有折叠删除 (delete all folds at the cursor line)
"按照tab来折叠，python最好用的 (ford by indent, very useful for python)
":set foldmethod=indent -> 设定后用zm 跟 zr 就可以的开关关闭了 (use zm zr)
"}

"split{
"vim提供了分屏功能（跟screen里面的split一样）
":split -> 将屏幕分成2个 (split screen)
":split abc.txt -> 将屏幕分成两个，第二个新的屏幕中显示abc.txt的内容 (split
"the windows, on new window, display abc.txt)
":vsplit -> 竖着分屏 (split vertically)
":{d}split -> 设定分屏的行数，例如我要一个屏幕只有20行，就可以下:20split
"(split the windows with {d} line. 20split: open new windows with 3 lines)
":new -> 分屏并且在新屏中建立一个空白文件 (split windows with a new blank
"file)
"CTRL-w+j/k/h/l -> 利用CTRL加w加上j/k/h/l在不同的屏内切换 (switch, move
"between split screens)
"CTRL-w+ -/+ -> 增减分屏的大小 (change split size)
"CTRL-w+t -> 移动到最顶端的那个屏 (move to the top windows)
"CTRL-w+b -> 移动到最下面的屏 (move to bottom window)
":close -> 关闭一个分出来的屏 (close splited screen)
": only -> 只显示光标当前屏 ，其他将会关闭(only display current active screen,
"close all others )
":qall -> 退出所有屏 (quite all windows)
":wall -> 保存所有屏 （write to all windows）
":wqall -> 保存并退出所有屏 (write and quite all windows)
":qall! -> 退出所有屏，不保存任何变动 (quite all windows without save)
"开启文件的时候，利用 -o选项，就可以直接开启多个文件在分屏中 (with -o option
"from command line, it will open files and display in split mode)
"vim -o a.txt b.txt
"}

"diff{
"今天有人说不会看diff，其实vim也可以用来看diff，这个也是属于分屏的部分，这里也写一下。
"vimdiff a.txt b.txt 如果直接给 -d选项是一样的 vim -d a.txt b.txt
":diffsplit abc.txt
"如果你现在已经开启了一个文件，想vim帮你区分你的文件跟abc.txt有什么区别，可以在vim中用diffsplit的方式打开第二个文件，这个时
"候vim会用split的方式开启第二个文件，并且通过颜色，fold来显示两个文件的区别
"这样vim就会用颜色帮你区分开2个文件的区别。如果文件比较大（源码）重复的部分会帮你折叠起来（折叠后面会说）
"}
