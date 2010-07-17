syntax on "подсветка синтаксиса
set autoindent
set background=dark
set lbr
set showcmd
set nocompatible
set backspace=indent,eol,start
set nobackup "отключить флуд баками

"привычное поведение стрелок
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"фикс вставки с отступами по ^u
inoremap <silent> <C-u> <ESC>u:set paste<CR>.:set nopaste<CR>gi

"F11 вкл-выкл нумерацию
imap <F11> <Esc>:set<Space>nu!<CR>a
nmap <F11> :set<Space>nu!<CR>

"F8 переключает кодировки
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set wildmenu
set wcm=<Tab>
menu Encoding.CP1251   :e ++enc=cp1251<CR>
menu Encoding.CP866    :e ++enc=cp866<CR>
menu Encoding.KOI8-U   :e ++enc=koi8-u<CR>
menu Encoding.UTF-8    :e ++enc=utf-8<CR>
map <F8> :emenu Encoding.<TAB>

"shift+f8 конвертирует между кодировками
set  wildmenu
set  wcm=<Tab>
menu FEnc.cp1251    :set fenc=cp1251<CR>
menu FEnc.koi8-r    :set fenc=koi8-r<CR>
menu FEnc.cp866     :set fenc=cp866<CR>
menu FEnc.utf-8     :set fenc=utf-8<CR>
map  <S-F8> :emenu FEnc.<Tab>

"отсутпы
set tabstop=4
set shiftwidth=4
set smarttab
set et

"перенос длинных строк
set wrap

"Далее настроим поиск и подсветку результатов поиска и совпадения скобок
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase " Игнорировать предыдущую опцию если в строке поиска есть буквы разного регистра

" Навигация по вкладкам и окнам
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt
map <A--> :tabedit<CR>
map <S-PageUp> gT
map <S-PageDown> gt
map <S-Up> <C-W>k
map <S-Down> <C-W>j
map <S-Left> <C-W>h
map <S-Right> <C-W>l
map <C-Up> <C-W>+
map <C-Down> <C-W>-
map <C-Left> <C-W><
map <C-Right> <C-W>>
imap <A-1> <Esc>1gti
imap <A-2> <Esc>2gti
imap <A-3> <Esc>3gti
imap <A-4> <Esc>4gti
imap <A-5> <Esc>5gti
imap <A-6> <Esc>6gti
imap <A-7> <Esc>7gti
imap <A-8> <Esc>8gti
imap <A-9> <Esc>9gti
imap <A--> <Esc>:tabedit<CR>i
imap <S-PageUp> <Esc>gTi
imap <S-PageDown> <Esc>gti

set title                   " показывать имя файла в заголовке окна
set expandtab               " tab with spaces
set softtabstop=4           " Табуляция 4 пробела
set shiftround              " удалять лишние пробелы при отступе

if has("autocmd")
    " определять тип файла автоматически
    filetype plugin on
endif

" показывать строку с позицией курсора
set ruler

" показывать буфер вводимой команды
set showcmd

" показывать первую парную скобку после ввода второй ...
set showmatch

" ... чуть меньше времени
set matchtime=1

" показывать совпадающие скобки для HTML-тегов
set matchpairs+=<:>


" возможность использовать команды при русской раскладке
"set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\,,ю.,ё`
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map . .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
map , ?]

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

nmap <Space> <PageDown> "Пробел в нормальном режиме перелистывает страницы

" C-c and C-v - Copy/Paste в глобальный клипборд
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
"map <S-Insert> <MiddleMouse>

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - Открыть файл...
nmap <F3> :e
vmap <F3> <esc>:e
imap <F3> <esc>:e

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - список закладок
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 - закрыть буфер
map <F9> :bd<CR>
vmap <F9> <ESC>:bd<CR>
imap <F9> <ESC>:bd<CR>

" F10 - выход
map <F10> :qa<cr>
vmap <F10> <esc>:qa<cr>
imap <F10> <esc>:qa<cr>


" Редко когда надо [ без пары =)
imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

set pastetoggle=<F1>       " убираем нежелательные эффекты форматирование,     когда вырезаем или копируем текст с одного окна и вставляем его  в vim.

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event
" handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
