
return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "gopls",
          "rust_analyzer",
          "clangd",

          "ts_ls",
          "html",
          "cssls",
          "tailwindcss",

          "pyright",

          "jsonls",
          "yamlls",
          "lua_ls",

          "dockerls",
          "docker_compose_language_service",

          "sqlls",

          "kotlin_language_server",
        },
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      if ok_cmp then
        capabilities = cmp_lsp.default_capabilities(capabilities)
      end

      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      vim.lsp.enable({
        "gopls",
        "rust_analyzer",
        "clangd",
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "pyright",
        "jsonls",
        "yamlls",
        "lua_ls",
        "dockerls",
        "docker_compose_language_service",
        "sqlls",
        "kotlin_language_server",
      })
    end,
  },
}
