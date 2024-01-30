{
  plugins.lualine = {
    enable = true;
    iconsEnabled = true;
    theme = "catppuccin";
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    disabledFiletypes = {
      statusline = [ ];
      winbar = [ ];
    };
    alwaysDivideMiddle = true;
    globalstatus = false;
    refresh = {
      statusline = 1000;
      tabline = 1000;
      winbar = 1000;
    };
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "branch" ];
      lualine_c = [ ];
      lualine_x = [ "diff" ];
      lualine_y = [ "encoding" "filetype" ];
      lualine_z = [ "location" ];
    };
    inactiveSections = {
      lualine_a = [ ];
      lualine_b = [ ];
      lualine_c = [ ];
      lualine_x = [ ];
      lualine_y = [ ];
      lualine_z = [ ];
    };
  };
}
