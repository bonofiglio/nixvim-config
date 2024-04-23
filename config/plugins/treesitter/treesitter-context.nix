{
  plugins.treesitter-context = {
    enable = true;
    settings = {
      max_lines = 3;
      min_window_height = 0;
      line_numbers = true;
      multiline_threshold = 1;
      trim_scope = "outer";
      mode = "cursor";
      separator = null;
      zindex = 20;
      on_attach = null;
    };
  };

  extraConfigLuaPost = ''
    vim.cmd [[hi TreesitterContextBottom gui=underline guisp=#74c7ec]] -- Treesitter-context separator border
  '';
}
