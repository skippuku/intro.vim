syn keyword IntroI I skipwhite skipempty nextgroup=IntroParen
syn region IntroParen start="(" end=")" contained contains=IntroParen,cNumbers,cString,IntroKeyword,IntroDisableOp
syn match IntroKeyword '=' contained
syn keyword IntroKeyword attribute flag float int member value string id length default type note alias contained
syn match IntroDisableOp '\~' skipempty skipwhite contained nextgroup=IntroDisabled
syn match IntroDisabled '[a-zA-Z0-9_]*' contained

hi def link IntroI Function
hi def link IntroParen Macro
hi def link IntroKeyword Type
hi def link IntroDisabled Comment
hi def link IntroDisableOp IntroDisabled

syn cluster cParenGroup add=IntroParen,IntroKeyword,IntroDisableOp,IntroDisabled
