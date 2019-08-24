scriptencoding utf-8

let g:airline#themes#moonlight#palette = {}

let s:colors = moonlight#GetColors()

function! s:wrap_opts(opts)
  if g:moonlight_terminal_italics == 0
    let i = index(a:opts, 'italic')
    if i >= 0
      unlet a:opts[i]
    endif
  endif

  return join(a:opts, ",")
endfunction

let s:airline_modified = [s:colors.green.gui, '', s:colors.green.cterm, '', s:wrap_opts(['italic'])]
let s:airline_warning = [s:colors.yellow.gui, s:colors.black.gui, s:colors.yellow.cterm, s:colors.black.cterm]
let s:airline_error = [s:colors.red.gui, '', s:colors.red.cterm, '', s:wrap_opts(['bold'])]

" ---
" Normal

let s:airline_a_normal = [s:colors.purple.gui, s:colors.black.gui, s:colors.purple.cterm, s:colors.black.cterm]
let s:airline_b_normal = [s:colors.white.gui, s:colors.black.gui, s:colors.white.cterm, s:colors.black.cterm]
let s:airline_c_normal = [s:colors.white.gui, s:colors.black.gui, s:colors.white.cterm, s:colors.black.cterm, s:wrap_opts(['italic'])]
let g:airline#themes#moonlight#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let g:airline#themes#moonlight#palette.normal_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#moonlight#palette.normal.airline_warning = s:airline_warning
let g:airline#themes#moonlight#palette.normal_modified.airline_warning = s:airline_warning
let g:airline#themes#moonlight#palette.normal.airline_error = s:airline_error
let g:airline#themes#moonlight#palette.normal_modified.airline_error = s:airline_error

" ---
" Insert

let s:airline_a_insert = [s:colors.green.gui, s:colors.black.gui, s:colors.green.cterm, s:colors.black.cterm]
let s:airline_b_insert = s:airline_b_normal
let s:airline_c_insert = s:airline_c_normal
let g:airline#themes#moonlight#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
r
let g:airline#themes#moonlight#palette.insert_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#moonlight#palette.insert.airline_warning = g:airline#themes#moonlight#palette.normal.airline_warning
let g:airline#themes#moonlight#palette.insert_modified.airline_warning = g:airline#themes#moonlight#palette.normal_modified.airline_warning
let g:airline#themes#moonlight#palette.insert.airline_error = g:airline#themes#moonlight#palette.normal.airline_error
let g:airline#themes#moonlight#palette.insert_modified.airline_error = g:airline#themes#moonlight#palette.normal_modified.airline_error

" ---
" Replace

let s:airline_a_replace = [s:colors.light_red.gui, s:colors.black.gui, s:colors.light_red.cterm, s:colors.black.cterm]
let s:airline_b_replace = s:airline_b_normal
let s:airline_c_replace = s:airline_c_normal
let g:airline#themes#moonlight#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b_replace, s:airline_c_replace)

let g:airline#themes#moonlight#palette.replace_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#moonlight#palette.replace.airline_warning = g:airline#themes#moonlight#palette.normal.airline_warning
let g:airline#themes#moonlight#palette.replace_modified.airline_warning = g:airline#themes#moonlight#palette.normal_modified.airline_warning
let g:airline#themes#moonlight#palette.replace.airline_error = g:airline#themes#moonlight#palette.normal.airline_error
let g:airline#themes#moonlight#palette.replace_modified.airline_error = g:airline#themes#moonlight#palette.normal_modified.airline_error

" ---
" Visual

let s:airline_a_visual = [s:colors.yellow.gui, s:colors.black.gui, s:colors.yellow.cterm, s:colors.black.cterm]
let s:airline_b_visual = s:airline_b_normal
let s:airline_c_visual = s:airline_c_normal
let g:airline#themes#moonlight#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)

let g:airline#themes#moonlight#palette.visual_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#moonlight#palette.visual.airline_warning = g:airline#themes#moonlight#palette.normal.airline_warning
let g:airline#themes#moonlight#palette.visual_modified.airline_warning = g:airline#themes#moonlight#palette.normal_modified.airline_warning
let g:airline#themes#moonlight#palette.visual.airline_error = g:airline#themes#moonlight#palette.normal.airline_error
let g:airline#themes#moonlight#palette.visual_modified.airline_error = g:airline#themes#moonlight#palette.normal_modified.airline_error

" ---
" Inactive

let s:airline_inactive = [ s:colors.comment_grey.gui, s:colors.black.gui, s:colors.comment_grey.cterm, s:colors.black.cterm ]
let g:airline#themes#moonlight#palette.inactive = airline#themes#generate_color_map(s:airline_inactive, s:airline_inactive, s:airline_inactive)

let g:airline#themes#moonlight#palette.inactive_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

" ---
" Command line

let s:airline_a_commandline = [s:colors.light_blue.gui, s:colors.black.gui, s:colors.light_blue.cterm, s:colors.black.cterm]
let s:airline_b_commandline = s:airline_b_normal
let s:airline_c_commandline = s:airline_c_normal
let g:airline#themes#moonlight#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#moonlight#palette.commandline.airline_warning = g:airline#themes#moonlight#palette.normal.airline_warning
let g:airline#themes#moonlight#palette.commandline.airline_error = g:airline#themes#moonlight#palette.normal.airline_error

" ---

let g:airline#themes#moonlight#palette.accents = {
      \ 'red': [s:colors.red.gui, '', s:colors.red.cterm, '']
      \ }

" ---
" Tabline

let s:airline_tabsel = [s:colors.white.gui, s:colors.visual_grey.gui, s:colors.white.cterm, s:colors.visual_grey.cterm, s:wrap_opts(['bold'])]
let s:airline_tabfill = [s:colors.white.gui, s:colors.black.gui, s:colors.white.cterm, s:colors.black.cterm]
let g:airline#themes#moonlight#palette.tabline = {
      \ 'airline_tabsel':  s:airline_tabsel,
      \ 'airline_tabfill':  s:airline_tabfill,
      \ 'airline_tabmod': [s:colors.green.gui, s:colors.black.gui, s:colors.green.cterm, s:colors.black.cterm, s:wrap_opts(['bold', 'italic'])],
      \ 'airline_tabhid': [s:colors.white.gui, s:colors.visual_grey.gui, s:colors.white.cterm, s:colors.visual_grey.cterm]
      \ }
