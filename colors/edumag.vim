"
" This is another version of Dim that rearranges the colors a bit...
"

"
" Restore default colors
hi clear
set background=dark 


if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "edumag"



hi Normal guibg=black guifg=grey75
hi Cursor guibg=grey75
hi NonText guibg=grey10 guifg=yellow4

"hi Statement guifg=wheat4
"hi Statement guifg=grey75 gui=bold
"hi Statement guifg=grey65 gui=bold
"hi Statement guifg=wheat4 gui=bold
"hi Statement guifg=#8B7E66 gui=bold
hi Statement guifg=#9B8E76 gui=bold

" Red
hi Constant guifg=PaleVioletRed3

" Green
"hi Identifier guifg=#00BB00
"hi Identifier guifg=#55BB55
"hi Identifier guifg=#55AA55
hi Type guifg=#559955 gui=none

" Yellow
hi Special guifg=khaki3

" Blue
hi Comment guifg=SkyBlue3

" Purple
hi PreProc guifg=plum3

" Cyan
"hi Character guifg=CadetBlue3
hi Identifier guifg=CadetBlue3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The default was cyan, which is too bright, but this takes away any
" distinction...
hi SpecialKey guifg=CadetBlue3
hi Directory guifg=SkyBlue3
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Orange
"hi Type guifg=orange4 gui=none
"hi Type guifg=orange3 gui=none
"hi Type guifg=#DD9550 gui=none
"hi Type guifg=#CD8550 gui=none
"hi Function guifg=#CD8550 gui=none
hi Character guifg=#CD8550 gui=none

hi link Function Identifier

"
" Colors not part of the original set:
"
"hi Folded guifg=cyan4 guibg=grey20
"hi Folded guifg=grey90 guibg=grey45
hi Folded guifg=black guibg=grey55

hi Visual gui=reverse guibg=fg guifg=darkolivegreen

"hi Search guifg=black guibg=LightSkyBlue3 gui=none
hi Search guifg=black guibg=LightSkyBlue4 gui=none

hi IncSearch guifg=yellow guibg=LightSkyBlue3 gui=bold
hi WarningMsg guifg=red guibg=GhostWhite gui=bold
hi Error guibg=red3

" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=white
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
