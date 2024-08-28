{
  imports = [
    ./bashls.nix
    ./clangd.nix
    ./cssls.nix
    ./dockerls.nix
    ./emmet_ls.nix
    ./eslint.nix
    ./gopls.nix
    ./graphql.nix
    ./hls.nix
    ./html.nix
    ./jsonls.nix
    ./lua_ls.nix
    ./nil_ls.nix
    # ./ocamllsp.nix
    ./pylsp.nix
    ./rust_analyzer.nix
    ./sqls.nix
    ./svelte.nix
    ./tailwindcss.nix
    ./taplo.nix
    ./terraformls.nix
    ./tsserver.nix
    ./volar.nix
    ./yamlls.nix
    ./zls.nix
  ];

  # https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  plugins.lsp = {
    enable = true;
    capabilities = ''
      capabilities.textDocument.completion.completionItem.snippetSupport = false
    '';
  };
}
