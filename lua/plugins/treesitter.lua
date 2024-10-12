return {
  {
    -- nvim-treesitter is simple way to use the interface for tree-sitter
    -- and to provide some basic functionality such as highlighting based on it
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "go",
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
