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
  elseif &ft == "ruby"
    return "\# "
  elseif &ft == "coffee"
    return "\# "

  elseif &ft == "haskell"
    return "-- "
  elseif &ft == "lua"
    return "-- "

  elseif &ft == "clojure"
    return ";; "
  elseif &ft == "lisp"
    return ";; "
  elseif &ft == "scheme"
    return ";; "

  elseif &ft == "vim"
    return "\" "
  endif
endfunction

" Insert delimiter to comment-out current line/s
function! CommentLine()
  let saved_cursor_pos = getcurpos()
  exec "silent! " . "s/^/" . CommentDelimiter() . "/"
  setpos('.', saved_cursor_pos)

endfunction

" Remove delimiter from current line/s
function! UnCommentLine()
  let saved_cursor_pos = getcurpos()
  exec "silent! " . "s/^" . CommentDelimiter() . "//e"
  setpos('.', saved_cursor_pos)
endfunction

command! SimpleComment   call CommentLine()
command! SimpleUncomment call UnCommentLine()
