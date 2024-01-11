local status, lualine = pcall(require, "lualine")
if (not status) then return end
--local dracula = require'lualine.themes.dracula'

local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
  yellow = '#E2B715',
  mint='#00FFAB'
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
    z = { fg = colors.black, bg = colors.violet },
  },

  insert = { a = { fg = colors.black, bg = colors.mint } },
  visual = { a = { fg = colors.black, bg = colors.yellow } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}



lualine.setup {
  options = {
    theme = bubbles_theme,
    icons_enabled = true,
    component_separators = { left = '  ', right = '  '},
    section_separators = { left = '  ', right = '  ' },
  --  disabled_filetypes = {
  --    statusline = {},
  --    winbar = {},
  --  },
    --ignore_focus = {},
    --always_divide_middle = true,
    --globalstatus = false,
  },
  sections = {
    lualine_a = {{ 'mode', separator = { left = '  '}, padding = 2,  }},
    lualine_b = {'filetype',{'branch', fmt = function(str) 
      if string.len(str) < 50 then return str end
      return str:sub(1,50).."..." end 
    }, 'diff', 'diagnostics'},
    lualine_c = {'fileformat'},
    lualine_x = {},
    lualine_y = { 'filename' , 'progress' },
    lualine_z = {
      { 'location', separator = { right = '  '}, padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename '},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {}
}
