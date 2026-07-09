{ config, pkgs, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "/home/max/music";
    extraConfig = ''
      audio_output {
        type    "pulse"
        name    "PulseAudio"
      }
    '';
  };
}
