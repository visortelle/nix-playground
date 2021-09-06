let
  pkgs = import <nixpkgs> {};
  mkNodejs = import ./nix/nodejs.nix pkgs;
in {
  nodejsProjectA = mkNodejs {
    name = "nodejs-project-a";
    src = ./nodejs-project-a;
  };
  nodejsProjectB = mkNodejs {
    name = "nodejs-project-b";
    src = ./nodejs-project-b;
  };
} 