return {
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    event = "BufRead",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "html", "css", "javascript" },
        highlight = { enable = true },
      })
    end,
  },
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "typescriptreact", "javascriptreact" },
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      vim.cmd([[
      autocmd FileType html,css CocInstall coc-html coc-css
    ]])
    end,
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      vim.cmd([[
      autocmd FileType html,css CocInstall coc-html coc-css
    ]])
    end,
  },
  {
    "ap/vim-css-color",
    ft = { "css", "scss", "sass", "less", "html" },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").html.setup({})
      require("lspconfig").cssls.setup({})
    end,
  },
}
