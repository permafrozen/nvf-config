{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = inputs@{ flake-parts, nvf, ... }:
    let modules = [ (import ./src) ];
    in flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" ];
      perSystem = { pkgs, ... }: {
        packages.default = (nvf.lib.neovimConfiguration {
          inherit pkgs;
          inherit modules;
        }).neovim;
      };
    };
}
