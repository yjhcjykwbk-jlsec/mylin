"	http://www.cnblogs.com/magic-chen/archive/2012/03/21/2410313.html
"	http://blog.csdn.net/wooin/article/details/1858917
"===============================================================================
"        Filename: vimrc
"          Author: Wu Yin(����)
"           Email: lazy_fox#gmail.com
"        Homepage: http://blog.csdn.net/wooin
"         Created: 2007-10-26
source $VIMRUNTIME/mswin.vim
behave mswin


"--------------------------------------------------------------
" ģ��MS Windows�еĿ�ݼ�
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
" ģ��MS Windows�еı�������: Ctrl+S
" }

"--------------------------------------------------------------
" �ҵĹ������ã�tab/space��
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
" ������أ���tab/list/cursor/nu/wrap��ʾ��ʽ
"--------------------------------------------------------------
"{
set tabstop=4      " ����tab���Ŀ��
set backspace=2     " �����˸������
set nu!             " ��ʾ�к�
"set vbt_vb=        " vim���б༭ʱ�����������󣬻ᷢ��һ��������������ȥ������
"set wrap           " �Զ�����
set nowrap         " ���Զ�����
set linebreak       " ���ʻ���
set whichwrap=b,s,<,>,[,]       " �������׺���ĩʱ����������һ��ȥ
set list                  " ��ʾ�Ʊ��
set listchars=tab:\|\ ,		" ��ʾTab��������ʹ��һ�������ߴ���
"set cursorline          "��ʾ��ǰ��
"set listchars = tab:>-,trail:- " ���Ʊ����ʾΪ'>---',����β�ո���ʾΪ'-'
"set listchars=tab:./ ,trail:.   " ���Ʊ����ʾΪ'.   '
set autochdir                   " �Զ�����Ŀ¼Ϊ���ڱ༭���ļ����ڵ�Ŀ¼
set hidden          " û�б���Ļ����������Զ�������
set scrolloff=5
"}

"--------------------------------------------------------------
" ����/�滻��ص�����
"--------------------------------------------------------------
"{
set hlsearch        " ������ʾ�������
"set incsearch       " ��ѯʱ�ǳ����㣬��Ҫ����book���ʣ������뵽/bʱ�����Զ��ҵ�
" ��һ��b��ͷ�ĵ��ʣ������뵽/boʱ�����Զ��ҵ���һ��bo��ͷ��
" ���ʣ��������ƣ����в���ʱ��ʹ�ô����û�����ҵ��𰸣�����
" ��Ҫƥ��ĵ���ʱ�������ǻس�
set gdefault        " �滻ʱ���е�����ƥ�䶼���滻��������ֻ�е�һ��
"}

"--------------------------------------------------------------
" �����ص����� �Զ���ȫ��
"--------------------------------------------------------------
"{
set completeopt=longest,menu    " �ص����ܲ�ȫʱ��Ԥ������
"filetype plugin indent on       " �������ſ��������ܲ�ȫ
"	�����һ���г�Ա�����Ķ���, ����"parmp", ����Insertģʽ, ��������"->"����, 
"	Ȼ����"Ctrl+X Ctrl+O", ��ʱ�ᵯ��һ�����в˵�, ��ʾ����ƥ��ı�ǩ, ����ͼ:
"	:set tags=/home/nfs/microwindows/src/tags
syn on              " ���﷨����
set showmatch       " ����ƥ��ģʽ�����Ƶ�����һ��������ʱ��ƥ����Ӧ���Ǹ�������
"	set smartindent     " ���ܶ��뷽ʽ
set shiftwidth=2    " ����ʱ�м佻��ʹ��4���ո�
set noautoindent      " �Զ�����
"	set ai!             " �����Զ�����
"}

"--------------------------------------------------------------
" �����۵�
"--------------------------------------------------------------
"{
set foldmarker={,}
set foldmethod=marker 
"���ٴ��۵�:zo hl/l/h
"ѭ���۵�zM
"ѭ��չ��zr
"	set foldopen=all 
"	set foldclose=all "�Զ��ر��۵�
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
" ���ڲ����Ŀ�ݼ�
"--------------------------------------------------------------
"{
nmap wv     <C-w>v     " ��ֱ�ָǰ����
nmap wc     <C-w>c     " �رյ�ǰ����
nmap ws     <C-w>s     " ˮƽ�ָǰ����
"nmap wv     <C-w>v     " ��ֱ�ָǰ����
"nmap wc     <C-w>c     " �رյ�ǰ����
nmap ws     <C-w>s     " ˮƽ�ָǰ����
nmap wj		<C-w>h
nmap w1     <C-w>h <C-w>h
nmap w2     <C-w>l <C-w>l
nmap wk		<C-w>l
nmap wJ		<C-w>H
nmap wK		<C-w>L
"}

"--------------------------------------------------------------
" GVIM���ڱ߿�Ͳ˵�����
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
"let Tlist_Use_SingleClick= 1 " ȱʡ����£���˫��һ��tagʱ���Ż�������tag�����λ��
let Tlist_Auto_Open=1 "������VIM���Զ���taglist����
let Tlist_Process_File_Always=1 "taglistʼ�ս����ļ��е�tag������taglist������û�д�
let Tlist_File_Fold_Auto_Close=1 "ͬʱ��ʾ����ļ��е�tagʱ����ʹtaglistֻ��ʾ��ǰ�ļ�tag�������ļ���tag�����۵�������
let Tlist_WinWidth = 25 " 40 cols wide
let NERDTreeWinSize= 23
"}

"--------------------------------------------------------------
" QuickFix
"--------------------------------------------------------------
"{
nmap <F6> :cn<cr>   " �л�����һ�����
nmap <F7> :cp<cr>   " �л�����һ�����
"}

"--------------------------------------------------------------
" WinManager :WMToggle
"--------------------------------------------------------------
"{
let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <C-w><C-b> :BottomExplorerWindow<cr> " �л���������һ������
"nmap <C-w><C-f> :FirstExplorerWindow<cr>   " �л���������һ������
nmap wm :WMToggle<cr> " ��nomalģʽ���������Exģʽ��
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
" ������������ϼ��м���,����<C-_>��Ҫ���ϰ���һ����,������Ļһ��
" �ͻص�nomal״̬��
" <C-_>s�İ������Ȱ�"Ctrl+Shift+-",Ȼ��ܿ��ٰ�"s"
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
"ֱ�Ӱ���<F3>�������ҹ�����ڵ��ַ���
" nnoremap <silent> <F3> :Rgrep<CR>

"--------------------------------------------------------------
" A
"--------------------------------------------------------------
nnoremap <silent> <F12> :A<CR>

"--------------------------------------------------------------
" NERD_commenter
"--------------------------------------------------------------
let NERD_c_alt_style = 1    " ��C���Ե�ע�ͷ��Ÿ�Ϊ//, Ĭ����/**/

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
let g:C_Comments = "no"         " ��C++��ע�ͷ��

let g:C_BraceOnNewLine = "no"   " '{'�Ƿ����һ�� '}'
let g:C_AuthorName = "Wu Yin"
let g:C_Project="F9"
let g:Cpp_Template_Function = "c-function-description-wuyin"
let g:C_TypeOfH = "c"           " *.h�ļ����ļ�������C����C++
" if filetype is C
"   TODO
" fi
" }

"--------------------------------------------------------------
" ���½��м���ӳ�䣬���ٽ������ģʽ�ķ���
"--------------------------------------------------------------
"{
nmap C <esc>:something<cr>
nmap c <esc>:something<cr> 
nmap I <esc>:something<cr>  "ԭ�����������,������0i���
nmap A <esc>:something<cr>  "ԭ������β���,������$a���
nmap O <esc>:something<cr>  "���ǹ���������һ�У�������shift+o���
nmap <S-j> <esc>:something<cr> "shift+j=J��ֻ�ú��߼���
nmap <S-k> <esc>:something<cr> "shift+k����
nmap H <esc>:something<cr>
nmap K <esc>:something<cr> 
nmap J <esc>:something<cr> 
nmap L <esc>:something<cr>
nmap r <esc>:something<cr>  "��Ҫ�滻ģʽ
nmap R <esc>:something<cr> 
nmap u <esc>:something<cr>  ��ctrl z����u
nmap U <esc>:something<cr>  ��ctrl z����u
nmap S <esc>:echo<cr>"ԭ����ɾ���в��Ҳ��룬������ddo����dd<S-o>����cc����������������·�ҳ
map <F1> :something<CR>
imap <F1> :something<CR>
"}

"--------------------------------------------------------------
" ע�ʹ���
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
" �ļ�����
"--------------------------------------------------------------
"{ ��������
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
" �������ֱ����Զ�ʶ��
set fencs=ucs-bom,utf-8,cp936,gb18030,gb2312,big5,euc-jp,euc-kr,ucs,latin1
set ffs=unix,dos,mac
set ff=unix						    "�����ļ���ʽΪUNIX��ʽ
" ���ļ����ⲿ���޸�ʱ���Զ���ȡ
set autoread 
" �������ļ�
set nobackup
set nowritebackup
"}

"--------------------------------------------------------------
" �﷨/�������indent/syntax
"--------------------------------------------------------------
"{
syntax enable                " ���﷨����
syntax on                    " �����ļ��������
"filetype indent on           " ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
"filetype plugin on           " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
"filetype plugin indent on    "���ܲ�ȫ
"}

"{
" һֱ�������
set mouse=a
" ����mapleader
let mapleader = ";"
let g:mapleader = ";"
" �������������ļ�
map <leader>s :source ~/.vimrc<cr> 
map <leader>e :e! ~/.vimrc<cr>
" ����ڴ�С
set cmdheight=1
" ��ʾ�к�
set number
" ��ǩ�ļ�tags
set tags=tags; 
set autochdir 
"matchit ��html��ǩ����ת
runtime macros/matchit.vim 
filetype plugin on 
"--------------------------------------------------------------
" mark��ǩ����
"��nhȥ�����Һ�ĸ���
nmap nh :noh<cr>
"}

"--------------------------------------------------------------
"��ǩ����
"--------------------------------------------------------------
"{
nmap tc	:tabc<return>		"�رձ�ǩ
nmap tt	:tabnew<return>		"�򿪱�ǩ
nmap tn	:tabnext<cr><return>"�򿪱�ǩ
nmap tp	:tabp<return>		"�ϸ���ǩ
"�½���ǩ
nmap <C-N> :tabnew<CR>
"��Ctrl+PageUp/PageDown�л���ǩҳ
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
"}

"--------------------------------------------------------------
" ״̬����ص�����
"--------------------------------------------------------------
"{
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" ״̬����ʾ������ [����ϵͳƽ̨���ļ����͡����ꡢ��ռ������ʱ���]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %y%r%m%*%=\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
set laststatus=2    " always show the status line
set ruler           " �ڱ༭�����У������½���ʾ���λ�õ�״̬��
"}

"--------------------------------------------------------------
" ��������
"--------------------------------------------------------------
"{
colorscheme summerfruit256 " darkZ adaryn
set guifont=DejaVu\ Sans\ mono\ 9
set background=dark
"}

"--------------------------------------------------------------
"������ʾ
"--------------------------------------------------------------
"mode{
":map ��ͨ������ģʽ���������ȴ�ģʽ
":vmap ����ģʽ
":omap �������ȴ�ģʽ
":map! �����������ģʽ
":imap ����ģʽ
":cmap ������ģʽ
"}

"cscope{
": cscope -Rbkq<�س�>
"2.3.1.2 R ��ʾ��������Ŀ¼����ļ�Ҳ��������
"2.3.1.3 b ��ʾcscope�������Դ����û����棬�����������������ݿ�
"2.3.1.4 q ����cscope.in.out��cscope.po.out�ļ����ӿ�cscope�������ٶ�
"2.3.1.5 k �����������ļ�ʱ��������/usr/includeĿ¼
"2.3.2��ʹ��cs find ����[3]��Ҳ���Լ�д�� cs f�����������Ҫ���ַ������ͣ�
"c:Find functions calling this function//���ҵ��ñ������ĺ���
"d:Find functions called by this function //���ұ��������õĺ���
"e:Find this egrep pattern//����egrepģʽ���൱��egrep���ܣ��������ٶȿ����
"f:Find this file //���Ҳ����ļ�������vim��find����
"g:Find this definition//���Һ������ꡢö�ٵȶ����λ�ã�����ctags�Ĺ���
"i:Find files #including this file //���Ұ������ļ����ļ�
"s:Find this C symbol //����C���Է��ţ������Һ��������ꡢö��ֵ�ȳ��ֵĵط�
"t:Find assignments to //����ָ�����ַ���
"���磺ʹ��cscope����do_fork�����Ķ���,��vim��������ִ�� :cs f g do_fork
"}

"fold{
"vim���۵����ܡ������Ҽǵ�Ӧ����6�������ʱ����Ƴ��İɡ��������д���������˵���ǳ����á�
"zfap -> ���ն����۵� (fold by paragraph)
"zo -> ��һ���۵� (open fold)
"zc -> �ر�һ���۵� (close fold)
"zf -> �����۵� (create fold) ���������v�Ӿ�ģʽ������ֱ�Ӹ������ȵ�
"zr -> ��һ���������۵�������3rz (reduce the folding by number like 3zr)
"zm -> �۵�һ��������֮ǰ�㶨��õ��۵��� (fold by number)
"zR -> �����е��۵� (open all fold)
"zM -> �ر����е�ߡ�� (close all fold)
"zn -> �ر��۵����� (disable fold)
"zN -> �����۵����� (enable fold)
"zO -> ������������۵��� (open all folds at the cursor line)
"zC -> ������������۵��ر� (close all fold at cursor line)
"zd -> ������µ��۵�ɾ�������ﲻ��ɾ�����ݣ�ֻ��ɾ���۵���� (delete fold at
"cursor line)
"zD -> ������������۵�ɾ�� (delete all folds at the cursor line)
"����tab���۵���python����õ� (ford by indent, very useful for python)
":set foldmethod=indent -> �趨����zm �� zr �Ϳ��ԵĿ��عر��� (use zm zr)
"}

"split{
"vim�ṩ�˷������ܣ���screen�����splitһ����
":split -> ����Ļ�ֳ�2�� (split screen)
":split abc.txt -> ����Ļ�ֳ��������ڶ����µ���Ļ����ʾabc.txt������ (split
"the windows, on new window, display abc.txt)
":vsplit -> ���ŷ��� (split vertically)
":{d}split -> �趨������������������Ҫһ����Ļֻ��20�У��Ϳ�����:20split
"(split the windows with {d} line. 20split: open new windows with 3 lines)
":new -> ���������������н���һ���հ��ļ� (split windows with a new blank
"file)
"CTRL-w+j/k/h/l -> ����CTRL��w����j/k/h/l�ڲ�ͬ�������л� (switch, move
"between split screens)
"CTRL-w+ -/+ -> ���������Ĵ�С (change split size)
"CTRL-w+t -> �ƶ�����˵��Ǹ��� (move to the top windows)
"CTRL-w+b -> �ƶ������������ (move to bottom window)
":close -> �ر�һ���ֳ������� (close splited screen)
": only -> ֻ��ʾ��굱ǰ�� ����������ر�(only display current active screen,
"close all others )
":qall -> �˳������� (quite all windows)
":wall -> ���������� ��write to all windows��
":wqall -> ���沢�˳������� (write and quite all windows)
":qall! -> �˳����������������κα䶯 (quite all windows without save)
"�����ļ���ʱ������ -oѡ��Ϳ���ֱ�ӿ�������ļ��ڷ����� (with -o option
"from command line, it will open files and display in split mode)
"vim -o a.txt b.txt
"}

"diff{
"��������˵���ῴdiff����ʵvimҲ����������diff�����Ҳ�����ڷ����Ĳ��֣�����Ҳдһ�¡�
"vimdiff a.txt b.txt ���ֱ�Ӹ� -dѡ����һ���� vim -d a.txt b.txt
":diffsplit abc.txt
"����������Ѿ�������һ���ļ�����vim������������ļ���abc.txt��ʲô���𣬿�����vim����diffsplit�ķ�ʽ�򿪵ڶ����ļ������ʱ
"��vim����split�ķ�ʽ�����ڶ����ļ�������ͨ����ɫ��fold����ʾ�����ļ�������
"����vim�ͻ�����ɫ�������ֿ�2���ļ�����������ļ��Ƚϴ�Դ�룩�ظ��Ĳ��ֻ�����۵��������۵������˵��
"}
