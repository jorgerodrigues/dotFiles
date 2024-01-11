local status, saga = pcall(require, "lspsaga")
if (not status) then return end

require("lspsaga").setup({
  request_timeout = 3000,
  finder = {
    max_height = 0.6,
    keys = {
      vsplit = 'v'
    },
  },
  definition = {
    edit = "<C-c>o",
    vsplit = "<C-c>v",
    split = "<C-c>i",
    tabe = "<C-c>t",
    quit = "q",
  },
  lightbulb = {
    enable = true,
    enable_in_insert = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
    debounce = 500,
  },
    hover = {
    max_width = 0.6,
    open_link = 'gx',
    open_browser = '!chrome',
  },
    code_action = {
    num_shortcut = true,
    show_server_name = false,
    extend_gitsigns = true,
    keys = {
      -- string | table type
      quit = "q",
      exec = "<CR>",
    },
  },
})

