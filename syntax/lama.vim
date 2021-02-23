" Vim syntax file
" Language:   Lama
" Maintainer: Ivan Panchishin <rot1tweiler@gmail.com>
" Version:    1.0

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Keywords
syn keyword lamaRepeat      while do od for
syn keyword lamaConditional if then fi elif else 
syn keyword lamaInclude     import
syn keyword lamaType        var box val str array sexp fun
syn keyword lamaStatement   skip lazy eta
syn keyword lamaTodo        NOTE TODO contained
syn keyword lamaModifier    public
syn keyword lamaLabel       case esac of
" Other
syn keyword lamaKeyword     after at before infix infixl infixr syntax

" Standard library
syn keyword lamaException failure
syn keyword lamaFunction  length printf assert

" Primitives
syn keyword lamaBoolean  true false
syn match lamaNumber     "\<-\=\d\+\>"
syn match lamaSpecial    "\\[nrt]" contained
syn match lamaString     +"\([^"]\|""\)*"+ contains=lamaSpecial
syn match lamaCharacter  +'\([^']\|''\|\\[nrt]\)'+ contains=lamaSpecial

" Operators
syn match lamaOperator ":="
syn match lamaOperator ":"
syn match lamaOperator "!!"
syn match lamaOperator "&&"
syn match lamaOperator "=="
syn match lamaOperator "!="
syn match lamaOperator "<="
syn match lamaOperator "<"
syn match lamaOperator ">="
syn match lamaOperator ">"
syn match lamaOperator "+"
syn match lamaOperator "-"
syn match lamaOperator "*"
syn match lamaOperator "/"
syn match lamaOperator "%"

syn match lamaDelimiter  ";"

" Comments
syn region lamaComment start="(\*" end="\*)" contains=lamaTodo,@Spell
syn match  lamaComment "--.*$" contains=lamaTodo,@Spell

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
hi def link lamaCharacter      Character
hi def link lamaOperator       Operator
hi def link lamaComment        Comment
hi def link lamaModifier       StorageClass
hi def link lamaKeyword        Keyword
hi def link lamaLabel          Label
hi def link lamaStructure      Structure
hi def link lamaException      Exception
hi def link lamaSpecial        Special

let b:current_syntax = "lama"

let s:cpo_save = &cpo
set cpo&vim
