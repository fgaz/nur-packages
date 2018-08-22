{ stdenv, fetchurl
, pkgconfig
, SDL, gtk3
}:

stdenv.mkDerivation rec {
  name = "sfxr-${version}";
  version = "1.2.1";
  src = fetchurl {
    url = "http://www.drpetter.se/files/sfxr-sdl-${version}.tar.gz";
    sha256 = "0dfqgid6wzzyyhc0ha94prxax59wx79hqr25r6if6by9cj4vx4ya";
  };
  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ SDL gtk3 ];
}

