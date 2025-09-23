return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      puppet = {
        mason = false,
        -- `gem install puppet-editor-services`
        cmd = { vim.fn.expand("~") .. "/bin/puppet-languageserver", "--stdio" },
        settings = {
          puppet = {
            telemetry = { enabled = false },
          },
        },
      },
    },
  },
}
