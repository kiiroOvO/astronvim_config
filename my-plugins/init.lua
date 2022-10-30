return {
    init = {
        -- You can disable default plugins as follows:
        -- ["goolord/alpha-nvim"] = { disable = true },

        -- You can also add new plugins here as well:
        -- Add plugins, the packer syntax without the "use"
        -- { "andweeb/presence.nvim" },
        -- {
        --   "ray-x/lsp_signature.nvim",
        --   event = "BufRead",
        --   config = function()
        --     require("lsp_signature").setup()
        --   end,
        -- },

        -- We also support a key value style plugin definition similar to NvChad:
        -- ["ray-x/lsp_signature.nvim"] = {
        --   event = "BufRead",
        --   config = function()
        --     require("lsp_signature").setup()
        --   end,
        -- },
    },
    -- All other entries override the require("<key>").setup({...}) call for default plugins
    ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
        -- config variable is the default configuration table for the setup function call
        -- local null_ls = require "null-ls"

        -- Check supported formatters and linters
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
        config.sources = {
            -- Set a formatter
            -- null_ls.builtins.formatting.stylua,
            -- null_ls.builtins.formatting.prettier,
        }
        return config -- return final config table
    end,
    treesitter = { -- overrides `require("treesitter").setup(...)`
        -- ensure_installed = { "lua" },
    },
    -- use mason-lspconfig to configure LSP installations
    ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
        -- ensure_installed = { "sumneko_lua" },
    },
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
        -- ensure_installed = { "prettier", "stylua" },
    },
}
