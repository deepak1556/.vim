function! s:setupMarkup()
  nnoremap <leader>p :silent !open -a Marked.app '%:p'<cr>
endfunction

au BufWrite *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
