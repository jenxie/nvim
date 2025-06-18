return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        puppet = { "puppet_lint" },
        epuppet = { "puppet_lint" },
      },

      formatters = {
        puppet_lint = {
          command = "puppet-lint",
          args = { "--fix", "--stdin" },
          stdin = true,
        },
      },
    },
  },
}
