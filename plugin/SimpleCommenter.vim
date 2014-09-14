" Get string to put at beginning
" of lines to comment out the line
function! CommentDelimiter()
  if &ft =~ "^\(java\|cpp\|javascript\|c\|go)$"
    " Delimiter //
    return "\/\/ "
  elseif &ft =~ "^\(python\|sh\)$"
    " Delimiter #
    return "# "
  elseif &ft =~ "^\(haskell\|lua\)$"
    " Delimiter --
    return "-- "
  elseif &ft =~ "^\(clojure\|lisp\)$"
    " Delimiter ;
    return ";; "
  elseif &ft =~ "^vim$"
    " Delimiter "
    return "\" "
  endif
endfunction

" Insert delimiter to comment-out current line/s
function! CommentLine()
  exec "silent! " . "s/^/" . CommentDelimiter() . "/"
endfunction

" Remove delimiter from current line/s
function! UnCommentLine()
  exec "silent! " . "s/^" . CommentDelimiter() . "//e"
endfunction

command SimpleComment   call CommentLine()
command SimpleUncomment call UnCommentLine()
