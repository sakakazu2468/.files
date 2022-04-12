function! Tex_ForwardSearchLaTeX()
...
  else
    " We're either UNIX or Mac and using a UNIX-type viewer
...
    else
      " We must be using a generic UNIX viewer
      " syntax is: viewer TARGET_FILE LINE_NUMBER SOURCE_FILE

      if viewer =~? "evince"

        let execString = 'silent! !fwdevince' .' '. fnamemodify(Tex_GetMainFileName(), ":p:r") .'.pdf '. line(".") .' '. expand("%:p")

      else

        let execString = 'silent! !'.viewer.' "'.mainfnameRoot.'.'.s:target.'" '.line('.').' "'.expand('%').'"'

      endif

    endif
