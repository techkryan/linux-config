return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      config = function()
        require("nvim-treesitter.configs").setup({
          textobjects = {
            select = {
              enable = true,

              -- Automatically jump forward to textobj, similar to targets.vim
              lookahead = true,

              keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                -- You can optionally set descriptions to the mappings (used in the desc parameter of
                -- nvim_buf_set_keymap) which plugins like which-key display
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                -- You can also use captures from other query groups like `locals.scm`
                ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
              }
            }
          }
        })
      end
    }
  },
  config = function() 
    require("nvim-treesitter.configs").setup({
        ensure_installed = {"xml", "c_sharp", "lua", "python", "vim", "javascript", "html", "json"},
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
    })
  end
  -- opts = {
  --   ensure_installed = {"xml", "c_sharp", "lua", "python", "vim", "javascript", "html", "json", "bash", "regex"},
  --   sync_install = false,
  --   highlight = { enable = true },
  --   indent = { enable = true },  
  --
  -- }
}