-- require("nvchad.configs.lspconfig").defaults()
--
-- local servers = { "html", "cssls" }
-- vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- local lspconfig = require("lspconfig") -- pre nvim 0.11
local lspconfig = require("nvchad.configs.lspconfig") -- nvim 0.11

-- list of all servers configured.
lspconfig.servers = {
    "lua_ls",
    "clangd",
    "pyright",
}

-- list of servers configured with default config.
local default_servers = { "clangd" }

-- lsps with default config
for _, lsp in ipairs(default_servers) do
    -- lspconfig[lsp].setup({ -- pre nvim 0.11
    vim.lsp.config(lsp, { -- nvim 0.11
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    })
end

-- lspconfig.lua_ls.setup({ -- pre nvim 0.11
-- vim.lsp.config("lua_ls", { -- nvim 0.11
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--
--     settings = {
--         Lua = {
--             diagnostics = {
--                 enable = false, -- Disable all diagnostics from lua_ls
--                 -- globals = { "vim" },
--             },
--             workspace = {
--                 library = {
--                     vim.fn.expand("$VIMRUNTIME/lua"),
--                     vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
--                     vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
--                     vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
--                     "${3rd}/love2d/library",
--                 },
--                 maxPreload = 100000,
--                 preloadFileSize = 10000,
--             },
--         },
--     },
-- })

vim.lsp.config("lua_ls", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,

    settings = {
        Lua = {
            diagnostics = {
                enable = false, -- disable lua_ls diagnostics
                -- globals = { "vim" },
            },
            workspace = {
                library = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                    vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
                    vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
})
vim.lsp.enable("lua_ls")

vim.lsp.config("pyright", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                typeCheckingMode = "strict", -- "strict" for stricter checking
            },
        },
    },
})
-- vim.lsp.enable("pyright")
