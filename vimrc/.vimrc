" VUNDLE
	set nocompatible              " be iMproved, required
	filetype off                  " required

	" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
	" To ignore plugin indent changes, instead use:
	"filetype plugin on
	"
	" Brief help
	" :PluginList       - lists configured plugins
	" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
	" :PluginSearch foo - searches for foo; append `!` to refresh local cache
	" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
	"
	" see :h vundle for more details or wiki for FAQ
	" Put your non-Plugin stuff after this line

" FUNCIONAMIENTO GENERAL

   set nocompatible "utiliza las opciones avanzadas de vim
   set helplang=es
   set langmenu=es_es.utf8
   lan es_ES.utf8
   set spell
   set spelllang=es
   set ttyfast
   " Realizar copias de seguridad
   " set nobackup		" Don't keep a backup file
   set backup
   " Directorio para las copias de seguridad
   set backupdir=/tmp
   " Enviar al portapapeles todo lo que copiemos
   set clipboard=unnamed
   " Activamos los plugins
   filetype plugin on
   " Caracter comodin que utilizan algunos plugins por defecto es la barra
   " invertida pero este es más comodo
   let mapleader = ","
   " Opciones al guardar sessiones para que no funcione lento al cargarlas
   set sessionoptions=buffers,curdir,folds,options
   " Linea de estado siempre activada
   set laststatus=2
   " Activar comprobación de errores en rst
   " let g:rst_check_syntax = 1   " NO FUNCIONA
   " Comprobación de errores en php
   let g:check_words = exists("g:php_check_syntax") ? g:php_check_syntax : 1
   " Tamaño del historial de comandos
   set history=50 

" VISUALIZACION
   set background=dark
   "set background=light
   colorscheme edumag " Colores personalizados
   set sm " Visualización de modos
   set showcmd " Visualización de comandos mientras vamos escribiendo
   set showmatch " Indica cierre de llaves
   set ruler "visualizar numero de linea y columna
   " set novisualbell
   set noerrorbells
   set showbreak=->  " Shows this string before broken lines
   syntax on

   " Aquí se activa el coloreado de sintaxis (syntax highlighting), además de
   " poner algunas opciones adicionales que son cómodas para programar (ver los
   " comentarios correspondientes).

   if has("syntax") || has("gui_running")

      " Con esto Vim señalará con fondo rojo los espacios que queden al final
      " de línea: rara vez sirven para algo, así que prefiero poder *verlos*
      " para poder quitarlos.
      highlight WhitespaceEOL ctermbg=white guibg=white
      match WhitespaceEOL /\s\+$/

      " El resaltado de sintaxis de algunos lenguajes tiene opciones
      " adicionales, aquí activamos las más útiles, sobre todo aquéllas que
      " señalan (normalmente en rojo) ciertos errores de programación.
      let c_gnu                = 1
      let c_space_errors       = 1
      let java_space_errors    = 1
      let ora_space_errors     = 1
      let plsql_space_errors   = 1
      let python_space_errors  = 1
      let python_highlight_all = 1
      let g:sql_type_default   = 'mysql'
   endif

" SANGRADO, SALTOS DE LINEA Y TABULADORES
   " setlocal textwidth=80 " Limita el ancho a 80 caracteres.
   set tabstop=2  " ancho de tabulador estandar
   set softtabstop=2 " ancho que deseamos
   set shiftwidth=2  " ancho del sangrado
   "set foldmethod=marker  " Plegar por marcas
   set foldmarker={,} " Marcas con las que plegar
   set foldmethod=indent  " Plegar por indent
   set autoindent " Indentación automatica
   set expandtab " El tabulador utiliza espacios en blanco
   filetype indent on	" Indenta segun tipo de archivo
   set backspace=indent,eol,start	" more powerful backspacing

" BÚSQUEDAS
   " set nohlsearch  " No ilumina las búsquedas encontradas
   set ignorecase smartcase " Ignora mayúsculas en búsquedas salvo si se escribe en mayúsculas.
   set incsearch " Búsqueda incremental

" COMANDOS PROPIOS
   iab _DP echo "<pre>" ; print_r($_POST) ; echo "</pre>"; // DEV 
   " FALTA LITERAL
   ab _FT /** FALTA LITERAL **/
   ab _FECHA <esc>:read !date +"\%A, \%d de \%B del \%Y"<cr>kJ<end>a
   " Suffixes that get lower priority when doing tab completion for filenames.
   " These are files we are not likely to want to edit or read.
   set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
   command Incloura !/home/eduardo/desarrollo/magtrabajos/magtrabajos -a %

" AUTOCOMMAND
   " En Vim se pueden definir comandos que se ejecutan automáticamente cuando
   " una determinada cosa ocurre. Este ejemplo hace que al cargar un fichero
   " que se había editado previamente se posiciones el cursor la línea en que
   " estaba cuando se dejó de editar por última vez. Muy cómodo :-)

   if has("autocmd")
      autocmd BufReadPost *
               \ if line("'\"") > 0 && line("'\"") <= line("$") |
               \		execute "normal g'\"" |
               \ endif
   endif

" Permitir .vimrc en carpetas de proyecto
   set exrc
   set secure

" CONFIGURACIÓN PARA DRUPAL
   set expandtab
   set tabstop=2
   set shiftwidth=2
   set autoindent
   set smartindent
   set encoding=utf-8
   set paste

" PROGRAMACIÓN

	" Ver documentación de php.
	" Con ponerte sobre una función y pulsar ‘K’ mayúscula tendrás la documentación 
	" correspondiente.
	" Instalar la documentación en el sistema.
	" sudo pear install doc.php.net/pman
	set keywordprg=pman

" PLUGINS

	" AIRLINE
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	let g:airline_theme='luna'
	set laststatus=2
	let g:airline#extensions#tabline#enabled = 1       "Habilita los tabs, para cambiar de tab presionar gt
	let g:airline_powerline_fonts=1
	set t_Co=256

	" Debug
	Plugin 'joonty/vdebug'
