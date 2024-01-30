{
  plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    nixvimInjections = true;
    ensureInstalled = "all";
    moduleConfig = {
      parser_install_dir = "~/.cache/nvim/treesitters";
    };
  };

  extraConfigLuaPre = '' 
    local treesitter_dir = vim.fn.stdpath("cache") .. "/treesitters"
    vim.fn.mkdir(treesitter_dir, "p")
    vim.opt.runtimepath:append(treesitter_dir)
  ''; # Add treesitter parser directory to runtimepath
}
