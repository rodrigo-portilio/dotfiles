return {
  { "mfussenegger/nvim-dap", lazy = false },
  "rcarriga/nvim-dap-ui",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "jay-babu/mason-nvim-dap.nvim",
  "neovim/nvim-lspconfig",
  "OmniSharp/omnisharp-vim",
  "github/copilot.vim",
  --ui
  { "j-hui/fidget.nvim" },
  -- completetion
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  { "hrsh7th/cmp-nvim-lsp", lazy = false },
  { "hrsh7th/cmp-buffer", lazy = false },
  { "hrsh7th/cmp-path", lazy = false },
  { "hrsh7th/cmp-cmdline", lazy = false },
  { "hrsh7th/nvim-cmp", lazy = false },
}
