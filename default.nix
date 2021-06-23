with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "immer-git";
  version = "git";
  src = ./.;
  nativeBuildInputs = [ cmake ];
  postUnpack = ''
    rm $sourceRoot/BUILD
  '';
  dontBuild = true;
  meta = with lib; {
    homepage    = "https://github.com/arximboldi/immer";
    description = "Postmodern immutable data structures for C++";
    license     = licenses.boost;
  };
}
