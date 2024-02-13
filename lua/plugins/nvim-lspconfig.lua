return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
            if not result or not result.diagnostics then
              return
            end

            -- Filter diagnostics here as before
            local diagnostics = {}
            for _, diagnostic in ipairs(result.diagnostics) do
              if diagnostic.code ~= 80001 then
                table.insert(diagnostics, diagnostic)
              end
            end

            -- Ensure 'ctx.bufnr' is used directly and is not nil
            if ctx.bufnr then
              vim.diagnostic.set(ctx.client_id, ctx.bufnr, diagnostics, config)
            else
              -- TODO: figure out why this happens and do more than swallow the error
              -- print("Warning: Buffer number (bufnr) is nil in diagnostic handler.")
            end
          end,
        },
      },
    },
  },
}
