return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      -- `dnf install -y rubygem-puppet-lint`
      puppet = { "puppet-lint" },
    },
  },
}
