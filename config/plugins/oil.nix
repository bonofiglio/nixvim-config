{
  plugins.oil = {
    enable = true;
    defaultFileExplorer = true;
    columns = {
      icon.enable = true;
      permissions.enable = false;
      size.enable = false;
      mtime.enable = false;
    };
    bufOptions = {
      buflisted = false;
      bufhidden = "hide";
    };
    winOptions = {
      wrap = false;
      signcolumn = "no";
      cursorcolumn = false;
      foldcolumn = "0";
      spell = false;
      list = false;
      conceallevel = 3;
      concealcursor = "nvic";
    };
    deleteToTrash = true;
    skipConfirmForSimpleEdits = false;
    promptSaveOnSelectNewEntry = true;
    keymaps = {
      show_help = "g?";
      select = "<CR>";
      select_vsplit = "<C-s>";
      select_split = "<C-h>";
      select_tab = "<C-t>";
      preview = "<C-p>";
      close = "<C-c>";
      refresh = "<C-l>";
      parent = "-";
      open_cwd = "_";
      cd = "`";
      tcd = "~";
      change_sort = "gs";
      open_external = "gx";
      toggle_hidden = "g.";
      toggle_trash = "g\\";
    };
    useDefaultKeymaps = true;
    viewOptions = {
      showHidden = true;
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
      minimizedBorder = "none";
      winOptions = {
        winblend = 0;
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
