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
      lualine_c = [{
        name = "filename";
        extraConfig = {
          file_status = true; # Displays file status (readonly status, modified status)
          newfile_status = false; # Display new file status (new file means no write after created)
          path = 1; # 0: Just the filename
          #           1: Relative path
          #           2: Absolute path
          #           3: Absolute path; with tilde as the home directory
          #           4: Filename and parent dir; with tilde as the home directory

          shorting_target = 40; # Shortens path to leave 40 spaces in the window
          #                       for other components. (terrible name; any suggestions?)
          symbols = {
            modified = "[+]"; # Text to show when the file is modified.
            readonly = "[-]"; # Text to show when the file is non-modifiable or readonly.
            unnamed = "[No Name]"; # Text to show for unnamed buffers.
            newfile = "[New]"; # Text to show for newly created file before first write
          };
        };
      }];
      lualine_x = [ ];
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

  extraConfigLua = ''
    require("lualine").setup({
      sections = {
        lualine_x = {
          {
            "diff"
          },
          {
            require("noice").api.statusline.mode.get,
            cond = function()
                local status = require("noice").api.statusline.mode.get()
                local prefix = "recording "

                return status and status:sub(1, #prefix) == prefix
            end,
            color = { fg = "#fff" },
          }
        },
      },
    })
  '';
}
