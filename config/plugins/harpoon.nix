{ pkgs, ... }:
{
  plugins.harpoon = {
    enable = true;
    package = pkgs.vimPlugins.harpoon2;
  };

  extraConfigLua = ''
    require("harpoon"):setup()
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>a";
      action.__raw = "function() require('harpoon'):list():add() end";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-e>";
      action.__raw = "function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-7>";
      action.__raw = "function() require('harpoon'):list():select(1) end";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-8>";
      action.__raw = "function() require('harpoon'):list():select(2) end";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-9>";
      action.__raw = "function() require('harpoon'):list():select(3) end";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-0>";
      action.__raw = "function() require('harpoon'):list():select(4) end";
      options = {
        silent = true;
      };
    }
  ];
}
