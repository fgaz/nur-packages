{ callPackage, libsForQt5 }:
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

