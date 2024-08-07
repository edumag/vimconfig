# vimconfig

Configuración de vim

## Instalación

```
git clone git@github.com:edumag/vimconfig.git .vim
ln -s .vim/vimrc/vimrc .vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Plugins

Lista de plugins que se instalan.

### Airline

Barra de vim enriquecida.

### Ctrlp

Para encontrar archivos.

Empiezas a escribir el nombre del archivo y comienza a presentarte
sugerencias.

### Python-mode-klen

Conjunto de plugins utiles para trabajar con python.

Automáticamente chequea el código en busca de errores cada vez que
guardamos y mucho más.

Toda la documentación en:

`:help pymode`

Ejemplos:

- 'K' Mostrar documentación.
- '<leader>b' Añade breakpoint.
- 'Ctrl-g' Ver definición de función.
- 'Ctrl-x-Ctrl-o' Autocompletado.

https://github.com/python-mode/python-mode

### Varios.

- rest.vim: Resaltado para rest, markdown.

### xmledit.

https://www.adictosaltrabajo.com/2011/02/01/vim-editar-xml/

## Trucos.

### :Tlist

Nos muestra una barra con el indice de clases y metodos del fichero.

### Mapeo de teclas:

Añadimos:

```
" Lista errores
map <F7> :cp<CR>
map <F8> :cn<CR>
```

Esto nos permite movernos por la lista de errores o quickfix de forma comoda
con las teclas F7 y F8.


