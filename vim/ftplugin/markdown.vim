set spell
set nonumber
set ruler

PencilSoft


hi clear SpellBad
hi SpellBad cterm=underline ctermfg=1

hi clear markdownBold
hi markdownBold cterm=bold

hi clear markdownBold
hi markdownBold cterm=bold

hi clear markdownItalic
hi markdownItalic cterm=italic

hi Todo ctermbg=10 ctermfg=4
hi Visual ctermbg=10 ctermfg=4

let user_dict = {
\ 'false': ['flase'],
\ 'JavaScript': ['Javascript'],
\ 'npm': ['NPM'],
\ }
call litecorrect#init(user_dict)
