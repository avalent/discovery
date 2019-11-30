# nix shell for: https://docs.rust-embedded.org/discovery/03-setup/linux.html

with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "rust-arm-embedded-build-env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    bluez-tools
    gcc-arm-embedded-7
    openocd
  ];

  shellHook = ''
    export hardeningDisable=all
  '';
}
