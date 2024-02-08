return {
  "chrisgrieser/nvim-scissors",
  dependencies = "nvim-telescope/telescope.nvim", -- optional
  opts = {
    snippetDir = "~/.config/nvim/snippets",
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets" } })
    vim.keymap.set("n", "<leader>ie", function()
      require("scissors").editSnippet()
    end)
    vim.keymap.set({ "n", "x" }, "<leader>ia", function()
      require("scissors").addNewSnippet()
    end)
  end,
}
