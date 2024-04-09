{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      columns = [
        {
          icon.enable = true;
          permissions.enable = false;
          size.enable = false;
          mtime.enable = false;
        }
      ];
      progress = {
        maxWidth = 0.9;
        minWidth = [
          40
          0.4
        ];
        maxHeight = [
          10
          0.9
        ];
        minHeight = [
          5
          0.1
        ];
        border = "rounded";
        minimized_border = "none";
        win_options = {
          winblend = 0;
        };
      };
      preview = {
        maxWidth = 0.9;
        minWidth = [
          40
          0.4
        ];
        maxHeight = 0.9;
        minHeight = [
          5
          0.1
        ];
        border = "rounded";
        winOptions = {
          winblend = 0;
        };
      };
      float = {
        padding = 2;
        maxWidth = 0;
        maxHeight = 0;
        border = "rounded";
        winOptions = {
          winblend = 0;
        };
      };
      view_options = {
        showHidden = true;
      };
      use_default_keymaps = true;
      prompt_save_on_select_new_entry = true;
      delete_to_trash = true;
      skip_confirm_for_simple_edits = false;
      win_options = {
        wrap = false;
        signcolumn = "no";
        cursorcolumn = false;
        foldcolumn = "0";
        spell = false;
        list = false;
        conceallevel = 3;
        concealcursor = "nvic";
      };
      buf_options = {
        buflisted = false;
        bufhidden = "hide";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>pv";
      action = "<cmd>Oil<CR>";
      options = {
        desc = "Open oil file explorer";
        silent = true;
      };
    }
  ];
}
