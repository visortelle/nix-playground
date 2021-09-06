pkgs: attrs:
  with pkgs;
  let defaultAttrs = {
    args = [ ./nodejs-builder.sh ];
    baseInputs = [ nodejs-16_x coreutils binutils-unwrapped findutils patchelf gawk gnused gnugrep gzip gnutar gnumake gcc which ];
    builder = "${bash}/bin/bash";
    buildInputs = [ ];
    setup = ./nodejs-setup.sh;
    system = builtins.currentSystem;
  };
  in derivation (defaultAttrs // attrs)