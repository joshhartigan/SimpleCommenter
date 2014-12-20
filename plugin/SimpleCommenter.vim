" Get string to put at beginning
" of lines to comment out the line
function! CommentDelimiter()

  if &ft == "java"
    return "\\\/\\\/ "
  elseif &ft == "cpp"
    return "\\\/\\\/ "
  elseif &ft == "javascript"
  elseif &ft == "c"
    return "\\\/\\\/ "
  elseif &ft == "go"
    return "\\\/\\\/ "

  elseif &ft == "python"
    return "\# "
  elseif &ft == "sh"
    return "\# "

  elseif &ft == "haskell"
    return "-- "
  elseif &ft == "lua"
    return "-- "

  elseif &ft == "clojure"
    return ";; "
  elseif &ft == "lisp"
    return ";; "

  elseif &ft == "vim"
    return "\" "
  endif
endfunction

" Insert delimiter to comment-out current line/s
function! CommentLine()
  exec "normal! mS"
  exec "silent! " . "s/^/" . CommentDelimiter() . "/"
  exec "normal! `S"

endfunction

" Remove delimiter from current line/s
function! UnCommentLine()
  exec "normal! mS"
  exec "silent! " . "s/^" . CommentDelimiter() . "//e"
  exec "normal! `S"
endfunction

command SimpleComment   call CommentLine()
command SimpleUncomment call UnCommentLine()
