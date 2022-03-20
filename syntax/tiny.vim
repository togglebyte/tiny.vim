" Language: Tiny template
" Maintainer: Togglebit

if exists("b:current_syntax")
    finish
endif

" Todo
syn match tinyComment "\/\/.*$" contains=tinyTodo
syn keyword tinyTodo TODO HACK NOTE contained

" Attributes
syn region tinyAttributes start="\["hs=s+1 end="\]"he=s-1 contains=tinyAttribute,tinyValue,tinyString
syn match tinyAttribute "\(\w\|-\)\+:"me=e-1 contained
syn match tinyValue ":\s*\(\w\|-\)\+"hs=s+1 contained

" Element
syn match tinyElement "^\s*\w\+\s*[:\[]"he=e-1 contains=TOP

" String
syn region tinyString start='"' end='"'

let b:current_syntax = "tiny"

hi def link tinyElement         Statement
hi def link tinyValue           Constant
hi def link tinyAttribute       Function
hi def link tinyString          Constant
hi def link tinyTodo            Todo
hi def link tinyComment         Comment
