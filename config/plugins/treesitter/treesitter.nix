{
  plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    nixvimInjections = true;
    settings = {
      highlight = {
        enable = true;
      };
      auto_install = true;
      ensure_installed = "all";
      parser_install_dir = "~/.cache/nvim/treesitters";
    };
  };
}
