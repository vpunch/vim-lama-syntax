" Vim syntax file
" Language:   Lama
" Maintainer: Ivan Panchishin <rot1tweiler@gmail.com>
" Version:    0.1

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword lamaRepeat      while do od for
syn keyword lamaConditional if then fi elif else 
syn keyword lamaInclude     import
syn keyword lamaType        var
syn keyword lamaStatement   skip
syn keyword lamaStatement   fun nextgroup=lamaFunction skipwhite
syn keyword lamaTodo        NOTE TODO contained
syn keyword lamaModifier    public
syn keyword lamaLabel       case esac of

" Other
syn keyword lamaKeyword    after array at before box eta infix infixl infixr lazy sexp str syntax val

syn match lamaFunction "\h\w*" display contained

syn keyword lamaBoolean true false
syn match lamaNumber "-?[0-9]+"
syn region lamaString start=+"+ end=+"+ end="$"

syn match lamaStructure   "[A-Z][a-zA-Z_0-9]*\s*\("

" Operators
syn match lamaOperator   ":="
syn match lamaOperator   ":"
syn match lamaOperator   "!!"
syn match lamaOperator   "&&"
syn match lamaOperator   "=="
syn match lamaOperator   "!="
syn match lamaOperator   "<="
syn match lamaOperator   "<"
syn match lamaOperator   ">="
syn match lamaOperator   ">"
syn match lamaOperator   "+"
syn match lamaOperator   "-"
syn match lamaOperator   "*"
syn match lamaOperator   "/"
syn match lamaOperator   "%"

syn match lamaDelimiter  ";"

" Comments
syn region promelaComment start="(\*" end="\*)" contains=lamaTodo,@Spell
syn match  promelaComment "--.*$" contains=lamaTodo,@Spell

" Class Linking
hi def link lamaRepeat         Repeat
hi def link lamaConditional    Conditional
hi def link lamaInclude        Include
hi def link lamaType           Type
hi def link lamaStatement      Statement
hi def link lamaTodo           Todo
hi def link lamaFunction       Function
hi def link lamaBoolean        Boolean
hi def link lamaNumber         Number
hi def link lamaString         String
hi def link lamaOperator       Operator
hi def link lamaComment        Comment
hi def link lamaModifier       StorageClass
hi def link lamaKeyword        Keyword
hi def link lamaLabel          Label
hi def link lamaStructure      Structure

let b:current_syntax = "lama"
