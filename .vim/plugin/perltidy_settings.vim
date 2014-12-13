" vnoremap ,pv :! perltidy
"             \ -l=78
"             \ -i=4
"             \ -ci=4
"             \ -st
"             \ -se
"             \ -vt=2
"             \ -cti=0
"             \ -pt=1
"             \ -bt=1
"             \ -sbt=1
"             \ -bbt=1
"             \ -nsfs
"             \ -nolq <CR>
"             \ -wbb="% + - * / x != == >= <= =~ !~ < > | & >= < = **= += *= &= <<= &&= -= /= |= >>= ||= .= %= ^= x="<CR>
" http://d.hatena.ne.jp/nitsuji/20060507/1146991795
vnoremap ,pv :! perltidy -se<CR>
nnoremap ,pt :%! perltidy -se<CR>
