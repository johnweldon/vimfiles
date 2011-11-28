
  if exists("did_load_filetypes")
    finish
  endif
  augroup filetypedetect
    au! BufRead,BufNewFile *.aspx,*.asmx,*.ascx      set filetype=aspnet
    au! BufNewFile,BufRead *.ps1                     setf ps1
    au! BufNewFile,BufRead *.config                  setf xml
    au! BufNewFile,BufRead *.msbuild                 setf xml
    au! BufNewFile,BufRead *.go                      setf go
    au! BufNewFile,BufRead *.fs,*.fsx                setf fs
    au! BufNewFile,BufRead [0-9]\{4\}-[0-9][0-9]-[0-9][0-9].log      setf log
  augroup END
