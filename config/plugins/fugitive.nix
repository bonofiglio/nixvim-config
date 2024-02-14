{
  plugins.fugitive = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gs";
      action = "vim.cmd.Git";
      lua = true;
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gh";
      action = "<cmd>diffget //2<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>diffget //3<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
