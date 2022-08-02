syn keyword IntroI I skipwhite skipempty nextgroup=IntroParen
syn region IntroParen start="(" end=")" contained contains=IntroParen,cNumbers,cString,IntroAttribute,IntroAttrType,IntroTrait,IntroDisableOp,cComment,cCommentL
syn keyword IntroAttribute attribute apply_to id length default type alias city cstring when contained
syn keyword IntroAttrType flag float int member value string expr contained
syn match IntroDisableOp '\(\~\)\|\(\<remove\>\)' skipempty skipwhite contained nextgroup=IntroDisabled
syn match IntroDisabled '[a-zA-Z0-9_]*' contained
syn match IntroTrait '\(@global\)\|\(@inherit\)' contained

hi def link IntroI Function
hi def link IntroParen Macro
hi def link IntroAttribute Function
hi def link IntroAttrType Type
hi def link IntroTrait Function
hi def link IntroDisabled Comment
hi def link IntroDisableOp IntroDisabled

syn cluster IntroGroup contains=IntroParen,IntroAttribute,IntroAttrType,IntroTrait,IntroDisableOp,IntroDisabled

syn cluster cParenGroup add=@IntroGroup
syn cluster cMultiGroup add=@IntroGroup
syn cluster cPreProcGroup add=@IntroGroup
