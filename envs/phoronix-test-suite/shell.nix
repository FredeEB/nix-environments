{ pkgs ? import <nixpkgs> {}
, extraPkgs ? []
}:

pkgs.stdenv.mkDerivation {
  name = "phoronix-env";
  buildInputs = with pkgs; [
    php
    autoreconfHook
    popt
    libaio
    perl
    pcre
    glibc.out
    glibc.static
    bc
  ] ++ extraPkgs;
  hardeningDisable = [ "all" ];
}
