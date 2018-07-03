self: super:

# Should work for basic usage
import ./default.nix { callPackage = super.callPackage; }

