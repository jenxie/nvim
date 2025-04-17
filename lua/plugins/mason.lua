return {
  -- ensure Puppet Editor Services is installed
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "puppet-editor-services",
        "prettier",
        "nginx-language-server",
      },
    },
  },
}
