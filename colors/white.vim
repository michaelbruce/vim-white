" White
" Author:       Michael Bruce <http://michaelbruce.online/>
" Version:      0.1
"
" A dark vim theme
" vim:set ts=2 sts=2 sw=2 expandtab:


set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "white"

let s:offset = 0 " TODO should be set dynamically, static for testing only
let s:display = 'cterm'

if has("gui_running")
    let s:offset = 2
    let s:display = 'gui'
    set guicursor+=n-v-c:blinkon0
end

let s:background = ["7", "08", "#000000", "#1d1e1a"][s:offset]
let s:greybackground = ["59", "07", "#595959", "#DDDDDD"][s:offset]
let s:text = ["0", "07", "#bcbcbc", "#EEEEEE"][s:offset]
let s:colorcolumnbg = ["234", "225", "#1c1c1c", "#DDDDDD"][s:offset]
let s:colorcolumnfg = ["220", "220", "ffdf00", "#DDDDDD"][s:offset]
let s:search = ["NONE", "224", "NONE", "#ffdfdf"][s:offset]
let s:visual = ["53", "224", "#5f005f", "#DDDDDD"][s:offset]
let s:errormsg = ["168", "3", "#df5f87", "#DDDDDD"][s:offset]
let s:warningmsg = ["39", "3", "#df5f87", "#DDDDDD"][s:offset]
let s:matchparen = ["9", "3", "#ff0087", "#DDDDDD"][s:offset]
let s:statustitle = ["1", "124", "#a7d42c", "#DDDDDD"][s:offset]
let s:menu = ["249", "75", "#eeeeee", "#eeeeee"][s:offset]
let s:comment = ["167", "243", "#878787", "#DDDDDD"][s:offset]
let s:nontext = ["124", "92", "#ff0087", "#DDDDDD"][s:offset] " dark was 102
let s:todo = ["80", "30", "#dfffdf", "#DDDDDD"][s:offset]
let s:number = ["2", "170", "#ff87af", "#DDDDDD"][s:offset]
let s:boolean = ["141", "94", "#af87ff", "#DDDDDD"][s:offset]
let s:constant = ["6", "91", "#af87ff", "#DDDDDD"][s:offset]
let s:conditional = ["1", "125", "#ff0087", "#DDDDDD"][s:offset]
let s:string = ["4", "55", "#ffffdf", "#DDDDDD"][s:offset]
let s:identifier = ["3", "166", "#ffaf00", "#DDDDDD"][s:offset] " - git commit diff
let s:preproc = ["6", "20", "#ff0087", "#DDDDDD"][s:offset]
let s:statement = ["152", "89", "#ff0087", "#DDDDDD"][s:offset]
let s:rubyclass = ["1", "23", "#ff0087", "#DDDDDD"][s:offset] " ruby section
let s:rubyinstancevariable = ["2", "23", "#ff0087", "#DDDDDD"][s:offset] " ruby section
let s:rubyinclude = ["1", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:rubyconstant = ["6", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:rubysymbol = ["2", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:rubyexception = ["1", "3", "#df5f87", "#DDDDDD"][s:offset]
let s:rubydefine = ["1", "3", "#a71d5d", "#DDDDDD"][s:offset]
let s:rubycontrol = ["1", "3", "#df5f87", "#DDDDDD"][s:offset]
let s:function = ["6", "22", "#87dfff", "#DDDDDD"][s:offset]
let s:operator = ["1", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:type = ["109", "90", "#00ffff", "#DDDDDD"][s:offset]
let s:special = ["108", "17", "#00ffff", "#DDDDDD"][s:offset]
let s:question = ["124", "28", "#ff0087", "#DDDDDD"][s:offset]
let s:warning = ["124", "87", "#ff0087", "#DDDDDD"][s:offset]
let s:error = ["44", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojureparen = ["0", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojurecond = ["1", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojureconstant = ["6", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojurefunc = ["1", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojuremacro = ["1", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojuredefine = ["1", "87", "#5fafdf", "#DDDDDD"][s:offset]
let s:clojurekeyword = ["6", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:shderefvar = ["6", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:shvariable = ["2", "23", "#ff0087", "#DDDDDD"][s:offset]
let s:shconditional = ["1", "23", "#ff0087", "#DDDDDD"][s:offset]

hi pythonSpaceError ctermbg=red guibg=red

exec 'hi Normal ' . s:display . 'bg=' . s:background . ' ' . s:display . 'fg=' . s:text
exec 'hi StatusLine ' . s:display . 'bg=' . s:text . ' ' . s:display . 'fg=' . s:background
exec 'hi StatusLineNC ' . s:display . 'bg=' . s:greybackground . ' ' . s:display . 'fg=' . s:background
exec 'hi VertSplit ' . s:display . 'bg=' . s:text . ' ' . s:display . 'fg=' . s:background
exec 'hi Search ' . s:display . 'bg=' . s:search . ' ' . s:display . 'fg=NONE cterm=underline gui=underline'
hi LineNr ctermfg=darkgray
hi CursorLine       guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE       ctermbg=255    cterm=NONE
exec 'hi Number ' . s:display . 'bg=' . s:background . ' ' . s:display . 'fg=' . s:number
" ruby function name
exec 'hi Function ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:function
" ruby do/end, viml keyword (hi)
exec 'hi Statement ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:string
" ruby class/end
exec 'hi rubyClass ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubyclass
exec 'hi rubyInstanceVariable ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubyinstancevariable
exec 'hi rubyInclude ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubyinclude
exec 'hi rubyConstant ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubyconstant
exec 'hi rubySymbol ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubysymbol
exec 'hi rubyException ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubyexception
exec 'hi rubyControl ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubycontrol
exec 'hi rubyDefine ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:rubydefine
exec 'hi rubyConditional ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:conditional
exec 'hi clojureParen ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojureparen
exec 'hi clojureCond ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojurecond
exec 'hi clojureConstant ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojureconstant
exec 'hi clojureFunc ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojurefunc
exec 'hi clojureMacro ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojuremacro
exec 'hi clojureDefine ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojuredefine
exec 'hi clojureKeyword ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:clojurekeyword
exec 'hi shDerefVar ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:shderefvar
exec 'hi shVariable ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:shvariable
exec 'hi shConditional ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:shconditional
exec 'hi Visual ' . s:display . 'bg=' . s:visual . ' ' . s:display . 'fg=NONE'
exec 'hi String ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:string
" ruby class, instance & block variables
exec 'hi Identifier ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:identifier
" ruby def/end and module closing, require keyword
exec 'hi Preproc ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:preproc
" ruby class/module names
exec 'hi Type ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:type
exec 'hi Comment ' . s:display . 'bg=' . s:background . ' ' . s:display . 'fg=' . s:comment
exec 'hi Todo ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:todo
exec 'hi Error ' . s:display . 'fg=' . s:error . ' ' . s:display . 'bg=NONE'
exec 'hi ErrorMsg ' . s:display . 'fg=' . s:errormsg . ' ' . s:display . 'bg=NONE'
exec 'hi WarningMsg ' . s:display . 'fg=' . s:warningmsg . ' ' . s:display . 'bg=NONE'
" this is what apex strings are syntaxed as under java
exec 'hi javaSpecialCharError ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:string

hi SpellBad         guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16         ctermbg=160    cterm=NONE
hi NonText           guifg=#262626        guibg=NONE     gui=NONE      ctermfg=yellow       ctermbg=NONE    cterm=NONE
exec 'hi MatchParen ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:matchparen

" ir_black doesn't highlight operators for some reason
exec 'hi Operator ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:operator

hi diffAdded   ctermfg=green
hi diffChange   ctermfg=green
hi diffRemoved ctermfg=red
hi diffDelete   ctermfg=green

" Completion Menu
exec 'hi PMenu ' . s:display . 'bg=NONE ' . s:display . 'fg=' . s:menu
exec 'hi PMenuSel ' . s:display . 'bg=' . s:visual . ' ' . s:display . 'fg=' . s:menu


" Status bar
exec 'hi User1 ' . s:display . 'bg=' . s:background . ' ' . s:display . 'fg=' . s:statustitle
set stl=--\ %1*%F%m%r%h%w%*\ %=\ %y\ -\ [%l,%c]\ [%L,%p%%] showtabline=1 tags=./.tags;
set fillchars=stlnc:\-,stl:\-,vert:\|

