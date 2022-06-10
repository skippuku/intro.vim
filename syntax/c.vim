syn keyword IntroI I skipwhite skipempty nextgroup=IntroParen
syn region IntroParen start="(" end=")" contained contains=IntroParen,cNumbers,cString,IntroAttribute,IntroAttrType,IntroTrait,IntroDisableOp,cComment,cCommentL
syn match IntroAttribute '=' contained
syn keyword IntroAttribute id length default type alias city cstring contained
syn keyword IntroAttrType attribute apply_to flag float int member value string contained
syn match IntroDisableOp '\(\~\)\|\(\<remove\>\)' skipempty skipwhite contained nextgroup=IntroDisabled
syn match IntroDisabled '[a-zA-Z0-9_]*' contained
syn match IntroTrait '\(@global\)\|\(@inherit\)' contained

hi def link IntroI Function
hi def link IntroParen Macro
hi def link IntroAttribute Type
hi def link IntroAttrType Keyword
hi def link IntroTrait Function
hi def link IntroDisabled Comment
hi def link IntroDisableOp IntroAttribute

syn cluster IntroGroup contains=IntroParen,IntroAttribute,IntroAttrType,IntroTrait,IntroDisableOp,IntroDisabled

syn cluster cParenGroup add=@IntroGroup
syn cluster cMultiGroup add=@IntroGroup
syn cluster cPreProcGroup add=@IntroGroup
