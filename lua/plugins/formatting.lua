vim.g.lazyvim_prettier_needs_config = true

return {
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
