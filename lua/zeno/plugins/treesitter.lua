return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    { "JoosepAlviste/nvim-ts-context-commentstring", ft = "javascriptreact" },
    "windwp/nvim-ts-autotag",
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      config = function()
      end,
    },
  },

  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        "json",
        "bash",
        "python",
        "go",
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    }
  end,
}
