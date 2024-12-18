vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- True color
vim.opt.termguicolors = true

require("config/lazy")

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
    float = { border = "single" },
})

vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false})
  end
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.supports_method('textDocument/rename') then
        vim.keymap.set('n', 'grn', function() vim.lsp.buf.rename() end, { desc = 'vim.lsp.buf.rename()' })
    end
    if client.supports_method('textDocument/implementation') then
      -- Create a keymap for vim.lsp.buf.implementation
    end

    vim.keymap.set({ 'n', 'x' }, 'gra', function() vim.lsp.buf.code_action() end, { desc = 'vim.lsp.buf.code_action()' })

    vim.keymap.set('n', 'grr', function() vim.lsp.buf.references() end, { desc = 'vim.lsp.buf.references()' })

    vim.keymap.set('i', '<C-S>', function() vim.lsp.buf.signature_help() end, { desc = 'vim.lsp.buf.signature_help()' })
  end,
})
