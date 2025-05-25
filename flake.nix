{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs@{ self, flake-parts, nvf, systems, ... }:
    let modules = [ (import ./vim) ];
    in flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;

      # Exposed Nixos Module which can be imported
      # in another consumer flake
      flake = {
        nixosModules.nvf = {
          imports = [ nvf.nixosModules.nvf ];
          programs.nvf.settings = import ./vim;
        };
      };

      # Exposed Standalone Package which can be added
      #  to the environment of a configuration
      perSystem = { pkgs, ... }: {
        packages.default = (nvf.lib.neovimConfiguration {
          inherit pkgs;
          inherit modules;
        }).neovim;
      };
    };
}
