{
  description = "NixVim configuration by bonofiglio";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim
    , flake-parts
    , nixpkgs
    , ...
    } @ inputs:
    let
      config = import ./config;
    in

    flake-parts.lib.mkFlake
      { inherit inputs; }
      {
        systems = [
          "x86_64-linux"
          "aarch64-linux"
          "x86_64-darwin"
          "aarch64-darwin"
        ];

        perSystem =
          { pkgs
          , system
          , ...
          }:
          let
            nixvimLib = nixvim.lib.${system};
            nixvim' = nixvim.legacyPackages.${system};
            nvim = nixvim'.makeNixvimWithModule {
              pkgs = import nixpkgs {
                inherit system;
                config.allowUnfree = true;
              };
              module = config;
              extraSpecialArgs = {
                minimal = false;
              };
            };

            nvim-minimal = nixvim'.makeNixvimWithModule {
              pkgs = import nixpkgs {
                inherit system;
                config.allowUnfree = true;
              };
              module = config;
              extraSpecialArgs = {
                minimal = true;
              };
            };
          in
          {
            checks = {
              # Run `nix flake check .` to verify that your config is not broken
              default = nixvimLib.check.mkTestDerivationFromNvim {
                inherit nvim;
                name = "A nixvim configuration";
              };
            };

            packages = {
              # Lets you run `nix run .` to start nixvim
              default = nvim;

              minimal = nvim-minimal;
            };
          };
      };
}
