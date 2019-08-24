let s:overrides = get(g:, "moonlight_color_overrides", {})

let s:colors = {
      \ "red": get(s:overrides, "red", { "gui": "#ff537f", "cterm": "204", "cterm16": "1" }),
      \ "light_red": get(s:overrides, "light_red", { "gui": "#ff98a4", "cterm": "204", "cterm16": "1" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#ff5370", "cterm": "196", "cterm16": "9" }),
      \ "green": get(s:overrides, "green", { "gui": "#c7f59b", "cterm": "114", "cterm16": "2" }),
      \ "teal": get(s:overrides, "teal", { "gui": "#73daca", "cterm": "114", "cterm16": "2" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#ffc777", "cterm": "180", "cterm16": "3" }),
      \ "orange": get(s:overrides, "orange", { "gui": "#ff9e64", "cterm": "173", "cterm16": "11" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#82aaff", "cterm": "39", "cterm16": "4" }),
      \ "light_blue": get(s:overrides, "blue", { "gui": "#8fd6ff", "cterm": "39", "cterm16": "4" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#c3a2ff", "cterm": "170", "cterm16": "5" }),
      \ "pink": get(s:overrides, "pink", { "gui": "#f7a4ec", "cterm": "170", "cterm16": "5" }),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#89ddff", "cterm": "38", "cterm16": "6" }),
      \ "light_cyan": get(s:overrides, "cyan", { "gui": "#0ec3e3", "cterm": "38", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#afbeee", "cterm": "145", "cterm16": "7" }),
      \ "black": get(s:overrides, "black", { "gui": "#212337", "cterm": "235", "cterm16": "0" }),
      \ "statusline": get(s:overrides, "statusline", { "gui": "#1e2132", "cterm": "235", "cterm16": "0" }),
      \ "visual_black": get(s:overrides, "visual_black", { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }),
      \ "variable_grey": get(s:overrides, "variable_grey", { "gui": "#cdd6f5", "cterm": "59", "cterm16": "15"}),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#7e8eda", "cterm": "59", "cterm16": "15" }),
      \ "gutter_fg_grey": get(s:overrides, "gutter_fg_grey", { "gui": "#4B5263", "cterm": "238", "cterm16": "15" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#2a2e48", "cterm": "236", "cterm16": "8" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#3c4361", "cterm": "237", "cterm16": "15" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#3c4361", "cterm": "237", "cterm16": "8" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#3c4361", "cterm": "238", "cterm16": "15" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#161a2a", "cterm": "59", "cterm16": "15" })
      \}

function! moonlight#GetColors()
  return s:colors
endfunction
