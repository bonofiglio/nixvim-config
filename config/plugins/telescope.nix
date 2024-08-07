{ specialArgs, ... }:
{
  plugins.telescope = {
    enable = true;
    extensions = {
      frecency = {
        enable = true;
        settings = {
          auto_validate = true;
          db_safe_mode = false;
          db_validate_threshold = 1;
        };
      };
      media-files.enable = true;
      ui-select.enable = true;
    };
    keymaps = {
      "<C-p>" = {
        action = "find_files";
        options.desc = "Find files with Telescope";
      };
      "<leader>ps" = {
        action = "live_grep";
        options.desc = "Search for string with live grep with Telescope";
      };
    };
    settings = {
      pickers = {
        colorscheme = {
          enable_preview = true;
        };
      };
      defaults = {
        mappings = {
          i = {
            "<C-l>" = "select_default";
            "<C-j>" = "move_selection_next";
            "<C-k>" = "move_selection_previous";
          } // (if specialArgs.minimal then { } else {
            "<C-t>" = "open_with_trouble";
          });
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>pf";
      action = "<cmd>Telescope frecency workspace=CWD<CR>";
      options = {
        desc = "Find files with Telescope. Sorted by frecency";
        silent = true;
      };
    }
  ];

  # Extremely hacky way of getting the Trouble Telescope provider to work
  extraConfigLuaPost = if specialArgs.minimal then "" else ''
    require('telescope.actions').open_with_trouble = require('trouble.sources.telescope').open
  '';
}
