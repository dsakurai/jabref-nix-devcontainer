{
  description = "A simple flake to test Nix installation";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/20edaf9a4790256add37b38ba4329b158dd138c8";

  outputs = { self, nixpkgs }: {
    packages = {
      x86_64-linux = let
        pkgs = import nixpkgs {
          system = "x86_64-linux";
        };
      in {
        # Add Wayland utilities
        jabref = pkgs.jabref;
      };
    };
  };
}