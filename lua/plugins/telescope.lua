return {
  "nvim-telescope/telescope-live-grep-args.nvim",
  -- This will not install any breaking changes.
  -- For major updates, this must be adjusted manually.
  version = "^1.0.0",
  config = function()
    require("telescope").load_extension("live_grep_args")
    vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
  end,
}
