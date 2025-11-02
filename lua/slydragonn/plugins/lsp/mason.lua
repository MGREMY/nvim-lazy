return {
  "williamboman/mason.nvim",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      branch = "v1.x",
    },
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      automatic_installation = true,
      branch = "v1.x",
      ensure_installed = {
        "cssls",
        "csharp_ls",
        "eslint",
        "html",
        "jsonls",
        "ts_ls",
        "tailwindcss",
        "gopls",
        "golangci_lint_ls",
      },
    })
  end,
}
