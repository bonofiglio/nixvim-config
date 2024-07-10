{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>Trouble toggle<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble close<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>tw";
      action = "<cmd>Trouble toggle diagnostics<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Trouble toggle diagnostics filter.buf=0<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>Trouble toggle quickfix<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>Trouble toggle loclist<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>Trouble next<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>Trouble prev<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "gR";
      action = "<cmd>Trouble toggle lsp_references win.position=right<CR>";
      options.silent = true;
    }
  ];
}
