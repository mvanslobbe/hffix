# In the nix-shell environment, this derivation should provide everything
# needed for all of the Makefile targets

with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "hffix";
  src = ./.;

  buildInputs = [ boost doxygen ];
}
