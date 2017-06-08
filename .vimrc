" vim:fdm=marker
"
" leader ������ {{{
" --------------------------------BEGIN----------------------------------------
let mapleader = " "
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>h <C-W>h
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>l <C-W>l
nmap <leader>t :tabnew .<CR>
nmap <leader>> <C-W>5>
nmap <leader>< <C-W>5<
" ack.vim
nmap <leader>s :Ack<CR>
nmap <leader>a :Ack 
" foldmethod
nmap <leader>f :set fdm=indent<CR>
" vim-hsftp
nmap <leader>uf :Hupload<CR>
nmap <leader>ud :Hupdir<CR>
" NERDTree
nmap <leader>n :let NERDTreeWinPos="left"<CR> :NERDTree<CR>
nmap <leader>r :let NERDTreeWinPos="right"<CR> :NERDTree<CR>
" diff
nmap <leader>dt :diffthis<CR>
nmap <leader>do :diffoff<CR>
nmap <leader>cp :set fo-=r<CR>
nmap <leader>ucp :set fo=r<CR>
" set width
nmap <leader>- :vertical resize 84<CR> " 4: numberwidth
nmap <leader>= :vertical resize 86<CR> " 6: numberwidth + git icon width
" --------------------------------END------------------------------------------
"  }}}
" 
" autocmd {{{
" --------------------------------BEGIN----------------------------------------
autocmd FileType js,vue set tabstop=2
autocmd FileType js,vue set shiftwidth=2
" --------------------------------END------------------------------------------
" }}}
"
" �жϲ���ϵͳ���ն� or Gvim {{{
" --------------------------------BEGIN----------------------------------------
" Windows or Linux
let g:isWindows = 0
let g:isLinux = 1
if (has("win32") || has("win64") || has("win95") || has("win16"))
  let g:isWindows = 1
else
  let g:isLinux = 1
endif
" --------------------------------END------------------------------------------
" }}}
"
" ���Gvim����ͼ�ν��� {{{
" --------------------------------BEGIN----------------------------------------
set go=                     " ��Ҫͼ�ΰ�ť
"set guioptions-=m          " �˵�
"set guioptions-=T          " ������
set guioptions+=r           " ������
"set guioptions-=L
"au GUIEnter * simalt ~x    " Gvim����ʱ�Զ����
" winpos 300 80             " ���ڳ���λ��
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI " �������壨�谲װ��
" --------------------------------END------------------------------------------
" }}}
"
" ���弰����������� {{{
" --------------------------------BEGIN----------------------------------------
set nocompatible
" ����vi����ģʽ��������ǰ�汾BUG�;�����
" �𲽼�飬̽���ļ������ʽ������ȷ��ʽ��
set fencs=utf-8,ucs-bom,gbk,shift-jis,gb18030,gb2312,cp936,latin-1
"if g:isWindows
"  set encoding=gbk " ����Ĭ�ϱ����ʽ
"  set fenc=gbk " ���õ�ǰʹ�úͱ���ı����ʽ
"endif

"if g:isLinux
  set encoding=utf-8
  set fenc=utf-8
"endif
" --------------------------------END------------------------------------------
" }}}
"
" Ĭ������ {{{
" --------------------------------BEGIN----------------------------------------
syntax on                       " �﷨����
set backspace=2                 " ʹbackspace��������indent��eol��start��
set smartindent                 " ������������
set autoindent                  " �Զ�����
set cindent
set tabstop=4                   " ����TAB�����
set expandtab                   " ��tab��\tװ���ɿո�(noexpandtab)
set shiftwidth=4                " ����ʱ�Զ�����2���ո�
set smarttab                    " ���кͶο�ʼ��ʹ���Ʊ��
set autoread                    " ���ļ����ⲿ�޸�ʱ�Զ�����
set autowrite                   " �Զ�����
set ignorecase                  " �������Դ�Сд
set hlsearch                    " ��������(nohlsearch)
set incsearch                   " �������ַ�����
set magic                       " ����ħ�� ��������ʽ�й�
set completeopt=longest,menu    " ���벹ȫ
set nu                          " �к�
set backspace=eol,start,indent  " backspace
set whichwrap+=<,>,h,l
set cursorline                  " ͻ����ʾ��ǰ��
"set cursorcolumn               " ͻ����ʾ��ǰ��

set matchtime=1                 " ƥ�����Ÿ���ʱ��(��λ0.1 sec)
set showmatch                   " ������ʾƥ�������
set fillchars=vert:\ ,stl:\ ,stlnc:\  " �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
" --------------------------------END------------------------------------------
" }}}
"
"  ״̬������ {{{
" --------------------------------BEGIN----------------------------------------
set laststatus=2 " ����״̬����Ϣ [1]������ʾ [2]������ʾ
set ruler        " ��ʾ���
set showcmd      " ��ʾ��������
set cmdheight=2  " ���������и߶�Ϊ2,Ĭ��1
set wildmenu     " ��ǿģʽ��������Tab
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  " ״̬����ʾ������
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" --------------------------------END------------------------------------------
" }}}
"
"  ����ӳ�� {{{
" --------------------------------BEGIN----------------------------------------
" CTRL+A ȫѡ����
" map <C-A> ggVGY
" ɾ������
map <F2> :g/^\s*$/d<CR>

" ����cS�����β�ո�-clear space
nmap cS :%s/\s\+$//g<CR>:noh<CR>
" ����cM�����β^M-clear ^M
nmap cM :%s/\r$//g<CR>:noh<CR>
"autocmd vimenter * copen 5
" --------------------------------END------------------------------------------
" }}}
"
" �������� {{{
" --------------------------------BEGIN----------------------------------------
set writebackup            " �����ļ�ǰ��������,����ɹ���ɾ������
set nobackup               " �����ޱ����ļ�
set clipboard+=unnamed     " ������а�
set confirm                " ����ֻ���ļ�ʱ,����ȷ��
set history=1000           " ��ʷ��¼��
set iskeyword+=_,$,@,%,#,- " �������·��ŵ��ʲ������зָ�

if version >= 603
  set helplang=cn          " ��ʾ���İ���
endif
filetype off               " �����ļ��������
filetype plugin on         " ��Բ�ͬ�ļ����ͼ��ض�Ӧ���
filetype plugin indent on  " �ض��ļ��ض�����
" quickfixģʽ
autocmd FileType c,cpp map <buffer><leader><space> :w<cr>:make<cr>
set rtp+=/usr/local/opt/fzf " fzf
" --------------------------------END------------------------------------------
" }}}
"
" ��ɫ������ {{{
" --------------------------------BEGIN----------------------------------------
set background=dark         " ����ɫ
" colorscheme desert        " ������ɫ(desert, industry, morning, murphy)
" hi Search term=bold ctermbg=5 guibg=DarkMagenta
" hi IncSearch term=bold ctermbg=5 guibg=DarkMagenta
colorscheme morning         " ������ɫ(desert, industry, morning, murphy)
hi Search ctermfg=0 ctermbg=225 guibg=LightMagenta
hi IncSearch ctermfg=0 ctermbg=225 guibg=LightMagenta
" fold
hi Folded term=bold,underline ctermbg=255 guibg=LightMagenta
" Pmenu
hi PmenuSel term=underline cterm=underline gui=underline ctermbg=81 guibg=LightBlue
" --------------------------------END------------------------------------------
" }}}
"
" �Զ����� {{{
" --------------------------------BEGIN----------------------------------------
" javascript settings
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
" --------------------------------END------------------------------------------
" }}}
"
" PLUGIN {{{
" ================================PLUGIN=======================================
" Vundle {{{
" --------------------------------BEGIN----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" vim-commentary ���ע��(`gc`) ֧�� `:Visual`
Plugin 'tpope/vim-commentary'
" vim-surround
Plugin 'tpope/vim-surround'
" L9
Plugin 'L9'
" sparkup
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" install nerdtree
Plugin 'scrooloose/nerdtree'
" emment
" Plugin 'emmetio/emmet'
Plugin 'mattn/emmet-vim'
" html5
Plugin 'othree/html5.vim'
" tagbar
Plugin 'majutsushi/tagbar'
" neocomplacche
Plugin 'shougo/neocomplcache.vim'
" auto-pairs
Plugin 'jiangmiao/auto-pairs'
" phpcomplete
Plugin 'shawncplus/phpcomplete.vim'
" powerline fonts
Plugin 'powerline/fonts'    " ���ֶ���װһ������
" vim-airline
Plugin 'bling/vim-airline'
" vim-json
Plugin 'elzr/vim-json'
" vim-go
Plugin 'fatih/vim-go'
" tabular
Plugin 'godlygeek/tabular'
" php.vim
Plugin 'stanangeloff/php.vim'
" ctrlp ģ������
Plugin 'kien/ctrlp.vim'
" syntastic �﷨���
Plugin 'scrooloose/syntastic'
" vim-gitgutter git�޸���ʾ
Plugin 'airblade/vim-gitgutter'
" ycm
" Plugin 'valloric/youcompleteme'
" ack ��Ŀ������( install 'ack' command )
Plugin 'mileszs/ack.vim'
" ������ת
Plugin 'easymotion/vim-easymotion'
" �������
Plugin 'terryma/vim-multiple-cursors'
" sftp �ϴ������ļ�
Plugin 'hesselbom/vim-hsftp'
"
Plugin 'tpope/vim-dispatch'
" Vue.js syntastic
" Plugin 'posva/vim-vue'
" Vue.js syntax
Plugin 'darthmall/vim-vue'
" ranbow
Plugin 'luochen1990/rainbow'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" --------------------------------END------------------------------------------
" }}}
"
" vim-vue {{{
" --------------------------------BEGIN----------------------------------------
" $ npm i -g eslint eslint-plugin-vue
" --------------------------------END------------------------------------------
" }}}
"
" php.vim {{{
" --------------------------------BEGIN----------------------------------------
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
" --------------------------------END------------------------------------------
" }}}
"
" html5 setting {{{
" --------------------------------BEGIN----------------------------------------
let g:html5_event_handler_attributes_complete = 1
" --------------------------------END------------------------------------------
" }}}
"
" nerdtree settings {{{
" --------------------------------BEGIN----------------------------------------
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
auto VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <silent> <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" --------------------------------END------------------------------------------
" }}}
"
" airline settings {{{
" --------------------------------BEGIN----------------------------------------
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'
set guifont=DejaVu_Sans_Mono_for_Powerline:h10 "config font for gvim
set encoding=utf-8
set fenc=gbk
" ����˵���������
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ���consle�������
language messages zh_CN.utf-8
" --------------------------------END------------------------------------------
" }}}
"
" emment settings {{{
" --------------------------------BEGIN----------------------------------------
let g:user_emmet_mode='n'
let g:user_emmet_mode='inv'
let g:user_emmet_mode='a'
let g:emmet_html5=0
let g:user_emmet_install_global=0
let g:user_emmet_leader_key='<C-J>'
autocmd FileType html,css,vue EmmetInstall
" --------------------------------END------------------------------------------
" }}}
"
" neocompletecache settings {{{
" --------------------------------BEGIN----------------------------------------
let g:acp_enableAtStartup=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'

inoremap <expr><C-g> neocomplcache#unde_completion()
inoremap <expr><C-l> neocomplcache#comlete_common_string()

"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>  neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancle_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#ComplateTags
" --------------------------------END------------------------------------------
" }}}
"
" ctrlp settings {{{
" --------------------------------BEGIN----------------------------------------
let g:ctrlp_map='<C-p>'
let g:ctrlp_cmd='CtrlP'

let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip "Linux/MaxOSX
let g:ctrlp_user_command='find %s -type f' "MaxOSX/Linux
" --------------------------------END------------------------------------------
" }}}
"
" nerdtree {{{
" --------------------------------BEGIN----------------------------------------
let NERDTreeWinSize = 20     " ��С
" --------------------------------END------------------------------------------
" }}}
"
" vimtweak {{{
" --------------------------------BEGIN----------------------------------------
" ����:
" 1.��ݼ�CTRL+PageUp/PageDown �ı�͸����;
" 2.CTRL+F11�ı��ö�״̬(���ö���Ϣ��ʾ!);
" 3.F11�ı��л��������;
let g:vimtweakTrans      = 255 "�����ʼ͸���� 0~255
let g:vimtweakTransDelta = 30 "����ÿ������/���ٵ�͸����ֵ 0~255
let g:vimtweakTransMini  = 20 "������С��͸���� 0~255
let g:vimtweakTopMost    = 0 "�����ʼ�Ƿ��ö�
let g:vimtweakMaximized  = 0 "�����ʼ�Ƿ����

au GUIEnter * call libcallnr("vimtweak.dll","EnableTopMost",g:vimtweakTopMost)
au GUIEnter * call libcallnr("vimtweak.dll","SetAlpha",g:vimtweakTrans)
au GUIEnter * call libcallnr("vimtweak.dll","EnableMaximize",g:vimtweakMaximized)

map <C-PageUp>   :call TransUp()<CR>
map <C-PageDown> :call TransDown()<CR>
map <C-F11>      :call SetAlwaysTop()<CR>
map <F11>        :call SetMaximized()<CR>
" --------------------------------END------------------------------------------
" }}}
"
" CTags & Taglist {{{
" --------------------------------BEGIN----------------------------------------
" ���ܣ�
" 1.<F9>�򿪺͹ر�Taglist
let Tlist_Sort_Type            = "name"  " ������������
let Tlist_Show_One_file        = 1     " ֻ��ʾ��ǰ�ļ���tag
let Tlist_Use_Right_Window     = 1      " ���Ҳ���ʾTaglist
let Tlist_Use_SingleClick      = 1     " ����tag����ת������
let Tlist_Compart_Format       = 1      " ѹ����ʽ
let Tlist_Exist_OnlyWindow     = 1      " ���Taglist�����һ���������˳�Vim
let Tlist_File_Fold_Auto_Close = 0      " ��Ҫ�ر������ļ���tags
let Tlist_Enable_Fold_Column   = 0      " ��Ҫ��ʾ�۵���
" ʹ��:TlistToggle��Taglistʱ�����뽹����Taglist
let Tlist_GainFocus_On_ToggleOpen   = 0
" �򿪺͹ر�Taglist
nmap <silent> <F9> :TlistToggle<CR>
" --------------------------------END------------------------------------------
" }}}
"
" syntatic {{{
" --------------------------------BEGIN----------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" eslint: https://github.com/eslint/eslint#global-installation-and-usage
" ~/.eslintrc.js
let g:syntastic_javascript_checkers = ['eslint']
" �����﷨������� (��: js, css, python, xml ...)
" https://github.com/humiaozuzu/dot-vimrc#dependencie
" --------------------------------END------------------------------------------
" }}}
"
" vim-hsftp {{{
" --------------------------------BEGIN----------------------------------------
" $ vim your-project/.hsftp
" ```.hsftp
" host   1.1.1.1
" user   username
" pass   test123
" port   22
" remote /var/www/
" confirm_download 0
" confirm_upload 0
" ```
" ��һ�´��룬���ӷ���
" $ ~/.vim/bundle/vim-hsftp/plugin/hsftp.vim
"   ---> H_UploadFile
" +   let prompt = printf('Upload file %s?', conf['localpath'])
" +   let choice = confirm(prompt, "&Yes\n&No", 2)
"   ---> H_UploadFolder
" +   let local_dir = expand('%:p:h')
" +   let remote_dir = conf['remote'] . expand('%:h:h')
" +   let choice  = confirm(printf('Upload dir %s?', local_dir), "&Yes\n&No", 2)
" +   if choice != 1
" +       echo 'Canceled.'
" +       return
" +   endif
" +   let action = action . printf('expect \"sftp>\"; send \"put -r %s %s\r\";', local_dir, remote_dir)
" -   if conf['confirm_upload'] == 1
" -     let prompt = printf('Upload file %s?', conf['localpath'])
" -     let choice = confirm(prompt, "&Yes\n&No", 2)
" -     if choice != 1
" -       echo 'Canceled.'
" -       return
" -     endif
" -   endif
" --------------------------------END------------------------------------------
" }}}
"
" vim-gitgutter {{{
" --------------------------------BEGIN----------------------------------------
set updatetime=250
" --------------------------------END------------------------------------------
" }}}
" ================================PLUGIN=======================================
" }}}
"
" FUNCTION {{{
" ================================FUNCTION=====================================
"
" Gvim͸�����ϵ� {{{
func! TransUp()
  let g:vimtweakTrans += g:vimtweakTransDelta
  let g:vimtweakTrans = (g:vimtweakTrans > 255 ? 255 : g:vimtweakTrans)
  call libcallnr("vimtweak.dll", "SetAlpha", g:vimtweakTrans)
endfunc
" }}}
"
" Gvim͸�����µ� {{{
func! TransDown()
  let g:vimtweakTrans -= g:vimtweakTransDelta
  let g:vimtweakTrans = (
    g:vimtweakTrans < g:vimtweakTransMini ?
    g:vimtweakTransMini : g:vimtweakTrans
  )
  call libcallnr("vimtweak.dll", "SetAlpha", g:vimtweakTrans)
endfunc
" }}}
"
" Gvim������ǰ {{{
func! SetAlwaysTop()
  let g:vimtweakTopMost = (g:vimtweakTopMost ? 0 : 1)
  call libcallnr("vimtweak.dll", "EnableTopMost", g:vimtweakTopMost)
  if g:vimtweakTopMost == 1
    exec "echo \"Always Top.\""
  else
    exec "echo \"Cancel Always Top.\""
  endif
endfunc
" }}}
"
" Gvim������� {{{
func! SetMaximized()
  let g:vimtweakMaximized = (g:vimtweakMaximized ? 0 : 1)
  call libcallnr("vimtweak.dll", "EnableMaximize", g:vimtweakMaximized)
  if g:vimtweakMaximized == 1
    exec "echo \"The Maximum.\""
  else
    exec "echo \"Cancel The Maximization.\""
  endif
endfunc
" }}}
"
" �Զ������ļ�ͷ {{{
"autocmd BufNewFile *.cpp *.[ch], *.sh, *.java exec :call SetTitle()
" �����ļ�ͷ
func! SetTitle()
  if &filetype == 'sh'
    call setline(1,"\# ")
    call append(line("."), "\# File Name: ".expand("%"))
    call append(line(".")+1, "\# Author: fanbin")
  endif
  " �½��ļ���,�Զ���λ���ļ�ĩβ
  autocmd BufNewFile * normal G
endfunc
" }}}
" ================================FUNCTION=====================================
" }}}
