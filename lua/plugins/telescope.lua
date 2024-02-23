return {
  "nvim-telescope/telescope.nvim",
  -- This will not install any breaking changes.
  -- For major updates, this must be adjusted manually.
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { height = 0.95, width = 0.95, preview_width = 0.3 },
      path_display = { "truncate" },
    },
  },
}
