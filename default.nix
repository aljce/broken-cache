let bootstrap = import <nixpkgs> {};
    reflex-platform-commit = builtins.fromJSON (builtins.readFile ./reflex-platform.json);
    reflex-platform-src = bootstrap.fetchFromGitHub {
      owner = "reflex-frp";
      repo  = "reflex-platform";
      inherit (reflex-platform-commit) rev sha256;
    };
    reflex-platform = import reflex-platform-src {};
in reflex-platform.ghcjs.reflex