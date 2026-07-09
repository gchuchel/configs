{ config, pkgs, ... }:

let
  # Собираем dmenu-flexipatch
  dmenu-flexipatch = pkgs.stdenv.mkDerivation {
    name = "dmenu-flexipatch";
    src = ../config/dmenu/dmenu-flexipatch;   # <- ../ вместо ./
    
    buildInputs = with pkgs; [
      xorg.libX11
      xorg.libXinerama
      xorg.libXft
      xorg.libXrender
      fontconfig
      freetype
    ];
    
    buildPhase = ''
      make
    '';
    
    installPhase = ''
      mkdir -p $out/bin
      cp dmenu stest dmenu_path $out/bin/
    '';
  };

  # Собираем dmenuhistory
  dmenuhistory = pkgs.stdenv.mkDerivation {
    name = "dmenuhistory";
    src = ../config/dmenu/dmenuhistory;       # <- ../ вместо ./
    
    buildInputs = with pkgs; [ ghc ];
    
    buildPhase = ''
      ghc -O2 dmenuhist.hs -o dmenuhist
    '';
    
    installPhase = ''
      mkdir -p $out/bin
      cp dmenuhist $out/bin/
    '';
  };

  # Скрипт для запуска dmenu с историей
  dmenu-run-script = pkgs.writeShellScriptBin "dmenu_run" ''
    #!/bin/bash
    dmenu_path | dmenuhist ~/.cache/dmenu_run_hist dmenu -c -W 600 -l 20 -nb "#000000" -nf "#aaaaaa" -sb "#1a1a1a" -sf "#ffffff" -nhb "#000000" -nhf "#ff4444" -shb "#1a1a1a" -shf "#ff4444" "$@"
  '';
in
{
  environment.systemPackages = with pkgs; [
    dmenu-flexipatch
    dmenuhistory
    dmenu-run-script
  ];
}
