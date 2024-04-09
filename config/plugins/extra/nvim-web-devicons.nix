{ pkgs, ... }:
{
  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.nvim-web-devicons;
      config = "lua require'nvim-web-devicons'.setup{default = true;}";
    }
  ];
}
