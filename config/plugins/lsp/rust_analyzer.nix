{
  plugins.lsp.servers.rust-analyzer = {
    enable = true;
    installCargo = false;
    installRustc = false;
    settings = {
      procMacro.enable = true;
      diagnostics.enable = true;
      interpret.tests = true;
      check.command = "clippy";
    };
  };
}
