" FZF
" nmap <silent> <leader>f :Files<CR>
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Hide status line for FZF
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
" open in new buffer if possible
let g:fzf_buffers_jump = 1

"Rg settings
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --count --ignore-case --no-messages --hidden --follow --glob "!.git/*" --glob "!yarn/" --color "always" '.shellescape(<q-args>), 0, <bang>0)
"nmap <leader>r :Find <Space>
"nmap <leader>r :Rg<Space>
"nnoremap <leader>!  :Rg!<Space>
