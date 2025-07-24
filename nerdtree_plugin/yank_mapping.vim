if exists("g:loaded_nerdtree_yank_mapping")
    finish
endif
let g:loaded_nerdtree_yank_mapping = 1

call NERDTreeAddKeyMap({
        \ 'key': 'c',
        \ 'callback': 'NERDTreeYankCurrentNode',
        \ 'quickhelpText': 'put full path of current node into the default register' })

function! NERDTreeYankCurrentNode()
    let n = g:NERDTreeFileNode.GetSelected()
    if n != {}
        call setreg('+', n.path.str())
        echo "copyed: " . n.path.str()
    endif
endfunction
