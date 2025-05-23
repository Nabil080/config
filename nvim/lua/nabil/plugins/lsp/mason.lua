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
                "lua_ls",
                "yamlls",
                "tailwindcss"
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",                         -- prettier formatter
                { "eslint_d", version = "13.1.2" }, -- js/ts linter
                "hadolint",                         -- docker lint
                "luacheck",                         -- lua linting
                "luaformatter",                     -- lua format
            },
        })
    end,
}
