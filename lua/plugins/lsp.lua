local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
  {
    "neovim/nvim-lspconfig", -- Core LSP configuration
    config = function()
      local lspconfig = require("lspconfig")

      -- Angular Language Server configuration
      lspconfig.angularls.setup({
        cmd = {
          "ngserver",
          "--stdio",
          "--tsProbeLocations",
          vim.fn.expand("$PWD"),
          "--ngProbeLocations",
          vim.fn.expand("$PWD"),
        },
        on_attach = function(client, bufnr)
          -- Configure keymaps or other LSP-specific settings here
        end,
        capabilities = capabilities,
        filetypes = { "typescript", "html", "typescriptreact" },
        root_dir = lspconfig.util.root_pattern("angular.json", "package.json"),
      })
    end,
  },
}
