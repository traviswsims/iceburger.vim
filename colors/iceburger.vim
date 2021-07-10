if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "iceburger"

let s:palette = {'gui' : {} , 'cterm' : {}}
let s:style = {}

let s:palette.gui.blue = '#77bcfe'
let s:palette.gui.grey = '#afb5bb'
let s:palette.gui.dark_grey = '#3b4247'
let s:palette.gui.pink = '#eba7eb'
let s:palette.gui.red = '#ef5f5f'
let s:palette.gui.danger_bg = '#800000'
let s:palette.gui.danger_fg = '#ffffff'
let s:palette.gui.yellow = '#ffff77'
let s:palette.gui.green = '#b2fb66'
let s:palette.gui.orange='#ffaf00'
let s:palette.gui.almost_white='#e6e8ea'

let s:palette.cterm.blue = 117
let s:palette.cterm.grey = 8
let s:palette.cterm.dark_grey = 237
let s:palette.cterm.pink = 219
let s:palette.cterm.red = 196
let s:palette.cterm.danger_bg = 124
let s:palette.cterm.danger_fg = 15
let s:palette.cterm.yellow = 228
let s:palette.cterm.green = 156
let s:palette.cterm.orange=214
let s:palette.cterm.almost_white=255


let s:style.bold = " cterm=bold gui=bold"
let s:style.none = " cterm=none gui=none"
let s:style.underline = " cterm=underline gui=underline"


" hi Normal       ctermfg=255 guifg=#e6e8ea ctermbg=234 guibg=#0c0d12 cterm=none gui=none
exe "hi! Normal" . " ctermfg=" . s:palette.cterm.almost_white . " guifg=" . s:palette.gui.almost_white . " ctermbg=234 guibg=#0c0d12 cterm=none gui=none "
hi NonText      ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#010202 cterm=bold gui=bold
exe "hi! Cursor" ." ctermbg=".s:palette.cterm.orange ." guibg=".s:palette.gui.orange
hi CursorColumn                           ctermbg=238 guibg=#444444
exe "hi CursorLine" ." ctermbg=".s:palette.cterm.dark_grey ." guibg=".s:palette.gui.dark_grey .s:style.none
exe "hi Error" ."    ctermbg=".s:palette.cterm.danger_bg ." ctermfg=".s:palette.cterm.danger_fg ." guibg=".s:palette.gui.danger_bg ." guifg=".s:palette.gui.danger_fg
exe "hi ErrorMsg" ." ctermbg=".s:palette.cterm.danger_bg ." ctermfg=".s:palette.cterm.danger_fg ." guibg=".s:palette.gui.danger_bg ." guifg=".s:palette.gui.danger_fg
hi FoldColumn   ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
hi Folded       ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi IncSearch    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none gui=none
hi LineNr       ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
exe "hi MatchParen   " ." ctermfg=".s:palette.cterm.blue ." guifg=#dfdfdf ctermbg=68"  ." guibg=".s:palette.gui.blue .s:style.bold
hi Pmenu        ctermfg=0   guifg=#000000 ctermbg=250 guibg=#bcbcbc
hi PmenuSel     ctermfg=255 guifg=#eeeeee ctermbg=243 guibg=#767676
hi PmenuSbar                              ctermbg=252 guibg=#d0d0d0
hi PmenuThumb   ctermfg=243 guifg=#767676
hi Search       ctermfg=0   guifg=#000000 ctermbg=149 guibg=#afdf5f
hi SignColumn   ctermfg=248 guifg=#a8a8a8
hi SpecialKey   ctermfg=77  guifg=#5fdf5f

hi SpellBad     ctermfg=160 guifg=fg      ctermbg=bg                cterm=underline               guisp=#df0000
hi SpellCap     ctermfg=189 guifg=#dfdfff ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellRare    ctermfg=168 guifg=#df5f87 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellLocal   ctermfg=98  guifg=#875fdf ctermbg=bg  guibg=bg      cterm=underline gui=underline

hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3b4247 cterm=none gui=none
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666 cterm=none gui=none
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=237 guibg=#3b4247 cterm=none gui=none

hi Title        ctermfg=225 guifg=#ffdfff
hi Todo         ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline
hi VertSplit    ctermfg=237 guifg=#3b4247 ctermbg=237 guibg=#3b4247 cterm=none gui=none
hi Visual       ctermfg=255 guifg=#eeeeee ctermbg=96  guibg=#875f87
hi VisualNOS    ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
exe "hi! WildMenu" ." ctermfg=".s:palette.cterm.green ." guifg=".s:palette.gui.green .s:style.bold

exe "hi! Comment" ." ctermfg=".s:palette.cterm.grey ." guifg=".s:palette.gui.grey
hi Constant     ctermfg=229 guifg=#ffffaf
exe "hi! Identifier" ." ctermfg=".s:palette.cterm.pink ." guifg=".s:palette.gui.pink
hi Ignore       ctermfg=238 guifg=#444444
hi Number       ctermfg=180 guifg=#e5c07b

exe "hi! PreProc" ." ctermfg=".s:palette.cterm.green ." guifg=".s:palette.gui.green

" def, fn, let, if, fn, @, &
exe "hi! Special" ." ctermfg="s:palette.cterm.orange ." guifg=".s:palette.gui.orange

" :keyword, doseq
exe "hi! Statement" ." ctermfg=".s:palette.cterm.blue ." guifg=".s:palette.gui.blue .s:style.none
exe "hi! Type"      ." ctermfg=".s:palette.cterm.pink ." guifg=".s:palette.gui.pink .s:style.none


exe "hi! diffAdded"   . " ctermfg=" . s:palette.cterm.green . " guifg=" . s:palette.gui.green
exe "hi! diffRemoved" . " ctermfg=" . s:palette.cterm.red   . " guifg=" . s:palette.gui.red
exe "hi! diffDelete"  . " ctermfg=" . s:palette.cterm.red   . " guifg=" . s:palette.gui.red   . " guibg=bg ctermbg=bg"
exe "hi! diffAdd"     . " ctermfg=" . s:palette.cterm.green . " guibg=" . s:palette.gui.green . " ctermbg=bg  guifg=bg"
exe "hi! diffChange       ctermfg=bg  guifg=bg  ctermbg=181 guibg=#dfafaf"
exe "hi! diffText         ctermfg=bg  guifg=bg  ctermbg=174 guibg=#df8787 cterm=none gui=none"
exe "hi! htmlTag"     ." ctermfg=".s:palette.cterm.grey ." guifg=".s:palette.gui.grey
exe "hi! htmlEndTag"  ." ctermfg=".s:palette.cterm.grey ." guifg=".s:palette.gui.grey
exe "hi! htmlArg"     ." ctermfg=".s:palette.cterm.red ." guifg=".s:palette.gui.red
hi htmlValue	ctermfg=187  guifg=#dfdfaf
hi htmlTitle	ctermfg=254  ctermbg=95

exe "hi! Directory" ." ctermfg=".s:palette.cterm.blue ." guifg=".s:palette.gui.blue

hi treeCWD        ctermfg=180  guifg=#dfaf87
hi treeClosable   ctermfg=174  guifg=#df8787

exe "hi! treeOpenable" . " ctermfg=" .s:palette.cterm.green  . " guifg=" . s:palette.gui.green
exe "hi! treePart"     . " ctermfg=" .s:palette.cterm.grey   . " guifg=" . s:palette.gui.grey
exe "hi! treeDirSlash" . " ctermfg=" .s:palette.cterm.orange . " guifg=" . s:palette.gui.orange
exe "hi! treeLink"     . " ctermfg=" .s:palette.cterm.red    . " guifg=" . s:palette.gui.red
exe "hi! String "      . " ctermfg=" .s:palette.cterm.yellow . " guifg=" . s:palette.gui.yellow
