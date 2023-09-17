local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "lua",
    "python",
    "go",
    "gitcommit",
    "typescript",
    "json",
    "css",
    "html",
    "javascript",
    "yaml",
    "tsx",
    "rust",
    "c"
  },
}
