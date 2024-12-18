return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'mellow',
      disabled_filetypes = {
        statusline = {'NvimTree', 'lazy'},
        -- winbar = {},
        tabline = {'NvimTree', 'lazy'}
      },
      globalstatus = true,
    },
    sections = {
      lualine_c = {{ "filename", path = 1 }}
    },
    tabline = {
      lualine_a = {
        {
          "buffers",
          use_mode_colors = true,
          mode = 4,
          filetype_names = {
            NvimTree = "Explorer"
          }
        },
      }
    }
  },
}
