{
  plugins = {
    cmp =
      {
        enable = true;
        settings = {
          mapping = {
            "<C-k>" = "cmp.mapping.select_prev_item(cmp_select)";
            "<C-j>" = "cmp.mapping.select_next_item(cmp_select)";
            "<C-l>" = "cmp.mapping.confirm({ select = true })";
            "<C-h>" = "cmp.mapping.close()";
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-u>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
          };
          sources = [
            { name = "nvim_lsp"; }
          ];
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        };
      };
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
  };
}
