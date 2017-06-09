function Macro1(v)
   execute ':set hlsearch!'
   execute '/"'.a:v
   execute ':set hlsearch!'
   execute ':normal k$xo], "'.a:v.'": ['
endfunction
