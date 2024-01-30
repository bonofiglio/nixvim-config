{
  plugins = {
    nvim-cmp =
      {
        enable = true;
        mapping = {
          "<C-k>" = "cmp.mapping.select_prev_item(cmp_select)";
          "<C-j>" = "cmp.mapping.select_next_item(cmp_select)";
          "<C-l>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
        };
        sources = [
          { name = "nvim_lsp"; }
        ];
        snippet.expand = "luasnip";
      };
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
  };
}
