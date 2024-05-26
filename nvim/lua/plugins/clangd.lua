return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Ensure mason installs the server
        clangd = {
          cmd = {
            "clangd",
            "--header-insertion=never",
          },
          init_options = {
            formatting = false,
          },
        },
      },
    },
  },
}
