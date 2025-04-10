return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")
        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "clangd",
                "ts_ls", -- Typescript & Javascript LSP
                "docker_compose_language_service",
                "dockerls",
                "sqlls",
                "lua_ls"
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",     -- prettier formatter
                "clang-format", -- cpp format
                "hadolint",     -- docker lint
                "sqruff",       -- sql format + lint
                "luacheck",     -- lua linting
                "luaformatter", -- lua format
            },
        })
    end,
}
