{
  plugins.treesitter-context = {
    enable = true;
    maxLines = 3;
    minWindowHeight = 0;
    lineNumbers = true;
    multilineThreshold = 1;
    trimScope = "outer";
    mode = "cursor";
    separator = null;
    zindex = 20;
    onAttach = null;
  };

  extraConfigLuaPost = ''
    vim.cmd [[hi TreesitterContextBottom gui=underline guisp=#74c7ec]] -- Treesitter-context separator border
  '';
}
