{ mkDerivation, alex, array, base, deepseq, happy, hspec
, hspec-discover, prettyprinter, stdenv, transformers
}:
mkDerivation {
  pname = "language-delphi";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    array base deepseq prettyprinter transformers
  ];
  libraryToolDepends = [ alex happy ];
  testHaskellDepends = [ base hspec hspec-discover prettyprinter ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/brandonhamilton/language-delphi#readme";
  description = "Parser and pretty-printer for Delphi";
  license = stdenv.lib.licenses.bsd3;
}
