{ pkgs, ... }:
let
  kitty-scrollback = pkgs.vimUtils.buildVimPlugin
    {
      pname = "kitty-scrollback-nvim";
      version = "main";
      src = builtins.fetchGit {
        url = "https://github.com/dariuscorvus/mikesmithgh/kitty-scrollback.nvim.git";
        ref = "main";
        rev = "4ebe434f70e8ea75a87251d00323fa60d1e5a117";
      };
    };
in
{
  config = {
    extraPlugins = [
      kitty-scrollback
    ];
  };
}
