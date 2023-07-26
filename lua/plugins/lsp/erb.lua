-- LSP
require'lspconfig'.html.setup{
  filetypes = {
    "html", "eruby"
  }
}

-- Snippets
require("luasnip").filetype_extend("eruby", {"html"})
