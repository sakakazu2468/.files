call ddc#custom#patch_global('sources', [
\ 'vsnip',
\ 'vim-lsp'
\ ])

call ddc#custom#patch_global('sourceOptions', {
\ '_': { 'matchers': ['matcher_head'] },
\ 'vsnip': {'mark': 'vsnip'},
\ 'vim-lsp': {
\   'mark': 'lsp',
\   'forceCompletionPattern': '\\.|:|->',
\   'minAutoCompleteLength': 1
\ },
\ })

call ddc#custom#patch_filetype(['typescript', 'go', 'rust'], 'sources', ['vim-lsp', 'vsnip'])
call ddc#custom#patch_filetype(['ruby', 'vim'], 'sources', ['vsnip'])

inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#manual_complete()

inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

call ddc#enable()
