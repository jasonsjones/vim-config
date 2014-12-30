unlet b:current_syntax
syn include @HTML $VIMRUNTIME/syntax/html.vim

syn region htmlTemplate start=+<script [^>]*type *=[^>]*text/ng-template[^>]*>+ keepend end=+</script>+me=s-1 contains=@HTML,htmlScriptTag,@htmlPreproc


syn region  script_jstype start=+<script[^>]*type="text/javascript"[^>]*>+ keepend end=+</script>+me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc


syn region  script_notype start=+<script>+ keepend end=+</script>+me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
