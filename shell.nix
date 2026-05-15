let
  pkgs = import <nixpkgs> { };

in

pkgs.mkShellNoCC {
  packages = with pkgs; [
   ruby 
 
  ];

  GREETING = "Hello, Nix!";

  shellHook = ''
    echo $GREETING
  '';
}
