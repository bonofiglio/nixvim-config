{ specialArgs, ... }:
let
  minimal = [
    ./plugins/treesitter/treesitter.nix
    ./plugins/bufferline.nix
    ./plugins/leap.nix
    ./plugins/oil.nix
    ./plugins/surround.nix
    ./plugins/telescope.nix
  ];
in
{
  imports = [
    ./theme.nix
    ./keymaps.nix
    ./options.nix
  ]
  ++ (if specialArgs.minimal then minimal else [ ./plugins ]);
}

