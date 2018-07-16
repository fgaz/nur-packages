# This file describes your repository contents.
# It should return a set of nix derivations.
# It should NOT import <nixpkgs>. Instead, you should take all dependencies as
# arguments.

{ callPackage
, libsForQt5
, haskellPackages
, pythonPackages
# , ...
# Add here other callPackage/callApplication/... providers as the need arises
, ... }:

{
  ### DEVELOPMENT
  lmdbxx = callPackage ./pkgs/lmdbxx { };

  ### APPLICATIONS
  variety = callPackage ./pkgs/variety { };

  ### GAMES
  _20kly = callPackage ./pkgs/20kly { };
  endgame-singularity = callPackage ./pkgs/endgame-singularity { };
  openhexagon = callPackage ./pkgs/openhexagon { };
  powermanga = libsForQt5.callPackage ./pkgs/powermanga { };
}

