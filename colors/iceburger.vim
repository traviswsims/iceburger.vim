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

let s:palette = {
  \ "gui" : {
      \ "blue" : "#77bcfe",
      \ "grey" : "#afb5bb",
      \ "dark_grey" : "#3b4247",
      \ "pink" : "#eba7eb",
      \ "red" : "#ef5f5f",
      \ "dark_red" : "#800000",
      \ "white" : "#ffffff",
      \ "yellow" : "#ffff77",
      \ "green" : "#b2fb66",
      \ "orange" : "#ffaf00",
      \ "almost_white" : "#e6e8ea",
      \ "brown" : "#e5c07b",
      \ "red2" : "#fb5959"
  \ } ,
  \ "cterm" : {
      \ "blue" : 117,
      \ "grey" : 8,
      \ "dark_grey" : 237,
      \ "pink" : 219,
      \ "red" : 196,
      \ "dark_red" : 124,
      \ "white" : 15,
      \ "yellow" : 228,
      \ "green" : 156,
      \ "orange" : 214,
      \ "almost_white" : 255,
      \ "brown" : 180,
    \}
  \ }

let s:style = {'bg' : {}, 'fg' : {}}

let s:style.bold = " cterm=bold gui=bold"
let s:style.none = " cterm=none gui=none"
let s:style.underline = " cterm=underline gui=underline"

let s:style.bg.black  = " ctermbg=0 guifg=#000000"
let s:style.bg.bg        = "ctermbg=bg  guibg=bg"
let s:style.bg.blue      = " ctermbg=" .s:palette.cterm.blue      ." guibg=" .s:palette.gui.blue
let s:style.bg.danger    = " ctermfg=" .s:palette.cterm.dark_red  ." guifg=".s:palette.gui.dark_red
let s:style.bg.dark_grey = " ctermbg=" .s:palette.cterm.dark_grey ." guibg=".s:palette.gui.dark_grey

let s:style.fg.black  = " ctermfg=0 guifg=#000000"
let s:style.fg.blue   = " ctermfg=" .s:palette.cterm.blue    ." guifg=" .s:palette.gui.blue
let s:style.fg.danger = " ctermfg=" .s:palette.cterm.white   ." guifg=" .s:palette.gui.white
let s:style.fg.green  = " ctermfg=" .s:palette.cterm.green   ." guifg=" .s:palette.gui.green
let s:style.fg.grey   = " ctermfg=" .s:palette.cterm.grey    ." guifg=" .s:palette.gui.grey
let s:style.fg.orange = " ctermfg=" .s:palette.cterm.orange  ." guifg=" .s:palette.gui.orange
let s:style.fg.pink   = " ctermfg=" .s:palette.cterm.pink    ." guifg=" .s:palette.gui.pink

let s:style.fg.red    = " ctermfg=" .s:palette.cterm.red     ." guifg=" .s:palette.gui.red2
let s:style.fg.yellow = " ctermfg=" .s:palette.cterm.yellow  ." guifg=" .s:palette.gui.yellow
let s:style.fg.brown  = " ctermfg=" .s:palette.cterm.brown   ." guifg=" .s:palette.gui.brown


exe "hi! Normal" . " ctermfg=" . s:palette.cterm.almost_white . " guifg=" . s:palette.gui.almost_white . " ctermbg=234 guibg=#0c0d12 cterm=none gui=none "
hi NonText      ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#010202 cterm=bold gui=bold

exe "hi! Cursor" ." ctermbg=".s:palette.cterm.orange ." guibg=".s:palette.gui.orange
hi CursorColumn  ctermbg=238 guibg=#444444
exe "hi CursorLine" .s:style.bg.dark_grey .s:style.none

exe "hi Error"    .s:style.bg.danger .s:style.fg.danger
exe "hi ErrorMsg" .s:style.bg.danger .s:style.fg.danger

hi FoldColumn   ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
hi Folded       ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi IncSearch    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none gui=none
hi LineNr       ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212

exe "hi MatchParen   " .s:style.fg.green

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

exe "hi! Visual" .s:style.bg.blue .s:style.fg.black
exe "hi! VisualNOS" .s:style.bg.blue .s:style.fg.black

exe "hi! Comment" .s:style.fg.grey
hi Constant     ctermfg=229 guifg=#ffffaf
exe "hi! Identifier" .s:style.fg.pink
hi Ignore       ctermfg=238 guifg=#444444
exe "hi Number " .s:style.fg.brown
exe "hi! String " .s:style.fg.yellow
exe "hi! Boolean " .s:style.fg.green

exe "hi! PreProc" .s:style.fg.green

" def, fn, let, if, fn, @, &
exe "hi! Special"    .s:style.fg.orange
exe "hi! UserCustom" .s:style.fg.orange

" :keyword, doseq
exe "hi! Statement" .s:style.fg.blue .s:style.none
exe "hi! Type"      .s:style.fg.red .s:style.none


exe "hi! diffAdd"     .s:style.fg.green .s:style.bg.bg
exe "hi! diffAdded"   .s:style.fg.green .s:style.bg.bg
exe "hi! diffRemoved" .s:style.fg.red
exe "hi! diffDelete"  .s:style.fg.red .s:style.bg.bg
exe "hi! diffChange       ctermfg=bg  guifg=bg  ctermbg=181 guibg=#dfafaf"
exe "hi! diffText         ctermfg=bg  guifg=bg  ctermbg=174 guibg=#df8787 cterm=none gui=none"

exe "hi! htmlTag"     .s:style.fg.grey
exe "hi! htmlEndTag"  .s:style.fg.grey
exe "hi! htmlArg"     .s:style.fg.red

hi htmlValue	ctermfg=187  guifg=#dfdfaf
hi htmlTitle	ctermfg=254  ctermbg=95

exe "hi! Directory"    .s:style.fg.blue
