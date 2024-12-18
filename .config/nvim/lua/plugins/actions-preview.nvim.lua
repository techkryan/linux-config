return {
   {
      "aznhe21/actions-preview.nvim",
      opts = {
        -- highlight_command = {
        --   function() require("actions-preview.highlight").delta() end,
        --   function() require("actions-preview.highlight").diff_so_fancy() end,
        --   function() require("actions-preview.highlight").diff_highlight() end,
        -- }, 

        -- telescope = {
        --   sorting_strategy = "ascending",
        --   layout_strategy = "vertical",
        --   layout_config = {
        --     width = 0.8,
        --     height = 0.9,
        --     prompt_position = "top",
        --     preview_cutoff = 20,
        --     preview_height = function(_, _, max_lines)
        --       return max_lines - 15
        --     end,
        --   },
        -- },
      },
      keys = {
        {"gf", function() require("actions-preview").code_actions() end, { "v", "n" }}
      },
      config = function()
        require("actions-preview").setup {
            highlight_command = {
              require("actions-preview.highlight").delta(),
              require("actions-preview.highlight").diff_so_fancy(),
              require("actions-preview.highlight").diff_highlight(),
            },

            telescope = {
              sorting_strategy = "ascending",
              layout_strategy = "vertical",
              layout_config = {
                width = 0.8,
                height = 0.9,
                prompt_position = "top",
                preview_cutoff = 20,
                preview_height = function(_, _, max_lines)
                  return max_lines - 15
                end,
              },
            },
        }
      end
   },
}
