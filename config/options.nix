{
  config = {
    luaLoader.enable = true; # Free performance
    options = {
      # Line number
      nu = true; # Print the line number in front of each line
      relativenumber = true; # Relative line numbers

      # Indentation
      tabstop = 4; # Number of spaces that a <Tab> in the file counts for.
      softtabstop = 4; # Number of spaces that a <Tab> counts for while performing editing operations
      shiftwidth = 4; # Number of spaces to use for each step of (auto)indent
      expandtab = true; # Use the appropriate number of spaces to insert a <Tab>
      smartindent = true; # Do smart autoindenting when starting a new line

      # Undo
      undofile = true; # Enable persistent undo

      # Search
      hls = true; # When there is a previous search pattern, highlight all its matches
      is = true; # While typing a search command, show where the pattern, as it was type so far, matches

      # Scrolling
      scrolloff = 8; # Minimal number of screen lines to keep above and below the cursor

      # Misc
      updatetime = 50; # Faster updates, happier me
      colorcolumn = "80"; # Gotta keep that punched card compatibility. You never know
    };

    extraConfigLua = ''
      -- Enable signcolumn only when the KITTY_SCROLLBACK environment variable is not set
      if os.getenv("KITTY_SCROLLBACK") == "1" then
          vim.opt.signcolumn = "no"
      else
          vim.opt.signcolumn = "yes"
      end

      -- Directory to store undo history
      vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" 
    '';
  };
}
