return {
  {
    -- nvim-treesitter is simple and easy way to use the interface for tree-sitter in Neovim
    -- and to provide some basic functionality such as highlighting based on it
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "puppet",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "pem",
        "vim",
        "yaml",
      },
    },
  },
}
