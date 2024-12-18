return {
  -- "Decodetalkers/csharpls-extended-lsp.nvim",
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
    end
    -- config = function()
    --   local capabilities = require('cmp_nvim_lsp').default_capabilities()
    --   require('lspconfig').csharp_ls.setup {
    --     capabilities = capabilities
    --   }
    -- end
  }
}
