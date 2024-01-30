{ pkgs, ... }:
let
  surrealql-treesitter = pkgs.vimUtils.buildVimPlugin
    {
      pname = "treesitter-surrealdb-nvim";
      version = "main";
      src = builtins.fetchGit {
        url = "https://github.com/dariuscorvus/tree-sitter-surrealdb.nvim.git";
        ref = "main";
        rev = "20ab9defbef56a06f9805cca3029a654c7a2204e";
      };
    };
in
{
  config = {
    extraPlugins = [
      surrealql-treesitter
    ];

    extraConfigLuaPost = "require('tree-sitter-surrealdb').setup()";
  };
}
