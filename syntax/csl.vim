" Vim syntax file for CATC Script Language
"
" Language:     CSL
" Maintainer:   Yuenfu.Chiu <yuenfu.chiu@gmail.com>
" Last Change:  2014-05-22
" Required Vim Version: 6.0
" Version: 0.1

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword cslCommand     in out set
syn keyword cslConditional if else select
syn keyword cslConstant    null
syn keyword cslKeyword     const
syn keyword cslLabel       default
syn keyword cslOperator    sizeof head tail
syn keyword cslRepeat      for
syn keyword cslStatement   return
syn match   cslFunction    "\w\+()$"
syn match   cslInclude     "%include"
syn match   cslLgcOperator "[&|||!]"
syn match   cslNumber      "\<0x\x\+\>"
syn match   cslNumber      "\<\d\+\>"
syn region  cslComment     start="#" end="$"
syn region  cslString      start=+"+ end=+"+

hi def link cslCommand     Statement
hi def link cslComment     Comment
hi def link cslConditional Conditional
hi def link cslConstant    Constant
hi def link cslFunction    Function
hi def link cslInclude     Include
hi def link cslKeyword     Operator
hi def link cslLabel       Label
hi def link cslLgcOperator Operator
hi def link cslNumber      Number
hi def link cslOperator    Operator
hi def link cslRepeat      Repeat
hi def link cslStatement   Statement
hi def link cslString      String

let b:current_syntax = "csl"
