self: super:

# Should work for basic usage
import ./default.nix { callPackage = super.callPackage; libsForQt5 = super.libsForQt5; }

