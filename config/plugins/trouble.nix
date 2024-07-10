{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>to";
      action = "Trouble toggle";
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "Trouble close";
    }
    {
      mode = "n";
      key = "<leader>tw";
      action = "Trouble toggle diagnostics";
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "Trouble toggle diagnostics filter.buf=0";
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = "Trouble toggle quickfix";
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "Trouble toggle loclist";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "Trouble next";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "Trouble prev";
    }
    {
      mode = "n";
      key = "gR";
      action = "Trouble toggle lsp_references win.position=right";
    }
  ];
}
