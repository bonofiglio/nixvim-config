{
  plugins.lsp.servers.sqls = {
    enable = true;
    onAttach.function = ''
      client.server_capabilities.documentFormattingProvider = false
      client.server_capabilities.documentRangeFormattingProvider = false
    '';
  };
}
