return {
    {
        "seblj/roslyn.nvim",
        ft = "cs",
        opts = {
             exe = {
                "dotnet",
                vim.fs.joinpath(vim.fn.stdpath("data"), "roslyn", "Microsoft.CodeAnalysis.LanguageServer.dll"),
            },
        },
        -- config = function()
        --     local capabilities = require('cmp_nvim_lsp').default_capabilities()
        --     require('roslyn').setup {
        --         capabilities = capabilities
        --     }
        -- end
    }
}
