"	http://www.cnblogs.com/magic-chen/archive/2012/03/21/2410313.html
	"===============================================================================
	"        Filename: vimrc
	"          Author: Wu Yin(吴垠)
	"           Email: lazy_fox#gmail.com
	"        Homepage: http://blog.csdn.net/wooin
	"         Created: 2007-10-26
	source $VIMRUNTIME/mswin.vim
	behave mswin

	
	"--------------------------------------------------------------------------------
	" 模仿MS Windows中的快捷键
	"--------------------------------------------------------------------------------
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
	"--------------------------------------------------------------------------------
"	imap <C-s> <Esc>:wa<cr>i<Right>
"	nmap <C-s> :wa<cr>
	map <F3> :NERDTreeToggle<CR>
	map <space><left> <esc>:NERDTreeToggle<CR>
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
	" }
	"===============================================================================
	set fileencodings=utf-8,gbk
	set tabstop=2       " 设置tab键的宽度
	set backspace=2     " 设置退格键可用
	set nu!             " 显示行号
	"set vbt_vb=        " vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
	"set wrap           " 自动换行
	set nowrap         " 不自动换行
	set linebreak       " 整词换行
	set whichwrap=b,s,<,>,[,]       " 光标从行首和行末时可以跳到另一行去
	"set list                       " 显示制表符
	"set listchars = tab:>-,trail:- " 将制表符显示为'>---',将行尾空格显示为'-'
	"set listchars=tab:./ ,trail:.   " 将制表符显示为'.   '
	set autochdir                   " 自动设置目录为正在编辑的文件所在的目录
	set hidden          " 没有保存的缓冲区可以自动被隐藏
	set scrolloff=5

	"--------------------------------------------------------------------------------
	" 查找/替换相关的设置
	"--------------------------------------------------------------------------------
	set hlsearch        " 高亮显示搜索结果
	set incsearch       " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
	" 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
	" 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
	" 找要匹配的单词时，别忘记回车
	set gdefault        " 替换时所有的行内匹配都被替换，而不是只有第一个

	"--------------------------------------------------------------------------------
	" 状态栏相关的设置
	"--------------------------------------------------------------------------------
	set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
	set laststatus=2    " always show the status line
	set ruler           " 在编辑过程中，在右下角显示光标位置的状态行

	"--------------------------------------------------------------------------------
	" 编程相关的设置
	"--------------------------------------------------------------------------------
	set completeopt=longest,menu    " 关掉智能补全时的预览窗口
	"filetype plugin indent on       " 加了这句才可以用智能补全
"	:set tags=/home/nfs/microwindows/src/tags
	syn on              " 打开语法高亮
	set showmatch       " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
"	set smartindent     " 智能对齐方式
	set shiftwidth=2    " 换行时行间交错使用4个空格
	set noautoindent      " 自动对齐
"	set ai!             " 设置自动缩进

	"--------------------------------------------------------------------------------
	" 代码折叠
	"--------------------------------------------------------------------------------
	set foldmarker={,}
	set foldmethod=marker
	"set foldmethod=syntax
	"set foldlevel=100       " Don't autofold anything (but I can still fold manually)
	"set foldopen-=search   " don't open folds when you search into them
	"set foldopen-=undo     " don't open folds when you undo stuff
	"set foldcolumn=4


	"--------------------------------------------------------------------------------
	" 窗口操作的快捷键
	"--------------------------------------------------------------------------------
	nmap wv     <C-w>v     " 垂直分割当前窗口
	nmap wc     <C-w>c     " 关闭当前窗口
	nmap ws     <C-w>s     " 水平分割当前窗口

	nmap tc	:tabc<return>		"关闭标签
	nmap tt	:tabnew<return>		"打开标签
	nmap tn	:tabnext<cr><return>		"打开标签
	nmap tp	:tabp<return>		"上个标签
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
	"###############################################################################
	" The following is the Plugins' setting
	"###############################################################################

	"--------------------------------------------------------------------------------
	" TagList :Tlist
	"--------------------------------------------------------------------------------
	let Tlist_Show_One_File=1
	let Tlist_Exit_OnlyWindow = 1
	let Tlist_Use_Right_Window=1
	"let Tlist_Use_SingleClick= 1 " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
	let Tlist_Auto_Open=1 "在启动VIM后，自动打开taglist窗口
	let Tlist_Process_File_Always=1 "taglist始终解析文件中的tag，不管taglist窗口有没有打开
	let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
	let Tlist_WinWidth = 25 " 40 cols wide
	let NERDTreeWinSize= 25
	"--------------------------------------------------------------------------------
	" netrw 文件浏览器 :e <PATH>
	"--------------------------------------------------------------------------------
	"let g:netrw_winsize = 30       " 浏览器宽度

	"--------------------------------------------------------------------------------
	" QuickFix
	"--------------------------------------------------------------------------------
	nmap <F6> :cn<cr>   " 切换到下一个结果
	nmap <F7> :cp<cr>   " 切换到上一个结果

	"--------------------------------------------------------------------------------
	" WinManager :WMToggle
	"--------------------------------------------------------------------------------
	let g:winManagerWindowLayout='FileExplorer|TagList'
	"let g:winManagerWidth = 30
	"let g:defaultExplorer = 0
	"nmap <C-w><C-b> :BottomExplorerWindow<cr> " 切换到最下面一个窗格
	"nmap <C-w><C-f> :FirstExplorerWindow<cr>   " 切换到最上面一个窗格
	nmap wm :WMToggle<cr> " 是nomal模式的命令，不是Ex模式的

	"--------------------------------------------------------------------------------
	" MiniBufExp
	"--------------------------------------------------------------------------------
	"let g:miniBufExplMapWindowNavVim = 1
	let g:miniBufExplMapWindowNavArrows = 1
	let g:miniBufExplMapCTabSwitchBufs = 1
	"let g:miniBufExplModSelTarget = 1

	"--------------------------------------------------------------------------------
	" cscope
	"--------------------------------------------------------------------------------
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

	"--------------------------------------------------------------------------------
	" Grep
	"--------------------------------------------------------------------------------
	"直接按下<F3>键来查找光标所在的字符串
	" nnoremap <silent> <F3> :Rgrep<CR>

	"--------------------------------------------------------------------------------
	" A
	"--------------------------------------------------------------------------------
	nnoremap <silent> <F12> :A<CR>

	"--------------------------------------------------------------------------------
	" NERD_commenter
	"--------------------------------------------------------------------------------
	let NERD_c_alt_style = 1    " 将C语言的注释符号改为//, 默认是/**/
	"nmap <F5> ,cc

	"--------------------------------------------------------------------------------
	" SuperTab :SuperTabHelp
	"--------------------------------------------------------------------------------
	let g:SuperTabRetainCompletionType = 2
	let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

	"--------------------------------------------------------------------------------
	" CVim :help csupport
	"--------------------------------------------------------------------------------
	let g:C_Comments = "no"         " 用C++的注释风格
	let g:C_BraceOnNewLine = "no"   " '{'是否独自一行
	let g:C_AuthorName = "Wu Yin"
	let g:C_Project="F9"
	let g:Cpp_Template_Function = "c-function-description-wuyin"
	let g:C_TypeOfH = "c"           " *.h文件的文件类型是C还是C++

	"##################################################################
	"########################## End Of Vimrc ##########################
	"##################################################################

	" if filetype is C
	"   TODO
	" fi

"--------------------------------------------------------
" 重新进行键盘映射，减少进入插入模式的方法
"--------------------------------------------------------
nmap C <esc>:something<cr>
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
nmap S <esc>:echo<cr>
"原本是删除行并且插入，可以用ddo或者dd<S-o>或者cc替代。现在用来向下翻页

map <F1> :something<CR>
imap <F1> :something<CR>
"vmap <C-S-P>    dO#endif<Esc>PO#if 0<Esc>
vmap <C-S-P>    :s/^/\/\//<Esc>
nmap <C-S-P>    :s/^/\/\//<Esc>
vmap <C-S-L>    :s/\/\///<Esc>
nmap <C-S-L>    :s/\/\///<Esc>
"vmap <C-S-o>    :s/^/"/<Esc>
" 设置文字编码自动识别
set fencs=utf-8,gb18030 
" 当文件在外部被修改时，自动读取
set autoread 
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
" 文件编码 
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big-5,ucs,latin1
" 不备份文件
set nobackup
set nowritebackup
" 显示行号
set number
