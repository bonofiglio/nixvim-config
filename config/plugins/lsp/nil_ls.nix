{
  plugins.lsp.servers.nil-ls = {
    enable = true;
    settings.formatting.command = [ "nixpkgs-fmt" ];
  };
}
