local get_color = require('chillthm').get_color

local colors = {
  bg = get_color("bg"),
  fg = get_color("fg"),
  linebg = get_color("linebg"),
  linefg = get_color("linefg"),
  normal = get_color("normal"),
  insert = get_color("insert"),
  replace = get_color("replace"),
  visual = get_color("visual"),
}


return {
  normal = {
    a = { bg = colors.linefg, fg = colors.normal, gui = 'bold' },
    b = { bg = colors.linebg, fg = colors.linefg },
    c = { bg = colors.linebg, fg = colors.linefg }
  },
  insert = {
    a = { bg = colors.linefg, fg = colors.insert, gui = 'bold' },
    b = { bg = colors.linebg, fg = colors.linefg },
    c = { bg = colors.linebg, fg = colors.linefg }
  },
  visual = {
    a = { bg = colors.linefg, fg = colors.visual, gui = 'bold' },
    b = { bg = colors.linebg, fg = colors.linefg },
    c = { bg = colors.linebg, fg = colors.linefg }
  },
  replace = {
    a = { bg = colors.linefg, fg = colors.replace, gui = 'bold' },
    b = { bg = colors.linebg, fg = colors.linefg },
    c = { bg = colors.linebg, fg = colors.linefg }
  },
  command = {
    a = { bg = colors.linefg, fg = colors.normal, gui = 'bold' },
    b = { bg = colors.linebg, fg = colors.linefg },
    c = { bg = colors.linebg, fg = colors.linefg }
  },
  inactive = {
    a = { bg = colors.linefg, fg = colors.linebg, gui = 'bold' },
    b = { bg = colors.linebg, fg = colors.linefg },
    c = { bg = colors.linebg, fg = colors.linefg }
  }
}
