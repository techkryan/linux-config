return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "dcampos/nvim-snippy",
      "dcampos/cmp-snippy",

      "hrsh7th/cmp-nvim-lsp",
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
    config = function()
      local cmp = require'cmp'

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require('snippy').lsp_expand(args.body) -- Other choices: vsnip, ultisnips, snippy
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'snippy' }, -- Other choices: vsnip, ultisnips, snippy
        }, {
          { name = 'buffer' },
        }),

        experimental = {
          ghost_text = true
        },
      })
    end
  },
}
