let $PATH = $PATH . ':' . expand('~/.cabal/bin')

map mc :GhcModCheckAsync<CR>
map ml :GhcModLintAsync <CR>
map mt :GhcModType      <CR>
map mi :GhcModInfo      <CR>
