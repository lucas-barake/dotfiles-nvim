vim.g.lazyvim_prettier_needs_config = true

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        typescript = { "oxlint", lsp_format = "first" },
        typescriptreact = { "oxlint", lsp_format = "first" },
        javascript = { "oxlint", lsp_format = "first" },
        javascriptreact = { "oxlint", lsp_format = "first" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        typescript = { "oxlint" },
        typescriptreact = { "oxlint" },
        javascript = { "oxlint" },
        javascriptreact = { "oxlint" },
      },
      linters = {
        oxlint = {
          condition = function(ctx)
            return vim.fs.find({ "oxlintrc.json", ".oxlintrc.json" }, {
              path = ctx.filename,
              upward = true,
            })[1] ~= nil
          end,
        },
      },
    },
  },
}
