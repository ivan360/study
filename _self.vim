" ======= Vimwiki ======= "

let g:vimwiki_w32_dir_enc     = 'utf-8' " 设置编码
let g:vimwiki_use_mouse       = 1       " 使用鼠标映射
" 声明可以在 wiki 里面使用的 HTML 标签
let g:vimwiki_valid_html_tags = 'p,a,img,b,i,s,u,sub,sup,br,hr,div,del,code,red,center,left,right,h1,h2,h3,h4,h5,h6,pre,code,script,style,span'

let blog = {}
if g:isWIN
  let blog.path          = 'e:/mywiki/wiki/'
  let blog.path_html     = 'e:/mywiki/html/'
  let blog.template_path = 'e:/mywiki/templates/'
else
  let blog.path          = '~/mywiki/wiki/'
  let blog.path_html     = '~/mywiki/html/'
  let blog.template_path = '~/mywiki/templates/'
endif
let blog.template_default  = 'code'
let blog.template_ext      = '.html'
let blog.auto_export       = 0

let study = {}
if g:isWIN
  let study.path          = 'e:/mywiki/study/'
  let study.path_html     = 'e:/mywiki/html/'
  let study.template_path = 'e:/mywiki/templates/'
else
  let study.path          = '~/mywiki/study/'
  let study.path_html     = '~/mywiki/html/'
  let study.template_path = '~/mywiki/templates/'
endif
let study.template_default  = 'code'
let study.template_ext      = '.html'
let study.auto_export       = 0

let g:vimwiki_list         = [blog, study]

" /tt -- 快捷插入当前时间
"imap <leader>tt <c-r>=strftime('%c')<cr>
imap xdt <c-r>=strftime("20%y.%m.%d (%A)")<cr>
nmap <F4> :up<CR>
imap <F4> <ESC>:up<CR>
nmap <F5> :tabnew<CR>
imap <F5> <ESC>:tabnew<CR>
set pastetoggle=<F11>"
