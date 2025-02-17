{
  description = "SDDM Sugar Catppuccin Theme";

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;

  outputs = { self, nixpkgs }@inputs:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux; in {
      packages.x86_64-linux.default = (pkgs.libsForQt5.callPackage ./default.nix { });
    };
}
