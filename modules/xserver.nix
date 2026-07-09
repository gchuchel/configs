{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager.startx.enable = true;
    xkb.layout = "us,ru";
    xkb.options = "grp:alt_shift_toggle";
  };

  services.libinput.enable = true;
}
