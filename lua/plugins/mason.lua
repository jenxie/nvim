return {
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
