{ config, pkgs, ... }:

{
  virtualisation.virtualbox.guest.enable = true;
  services.xserver.videoDrivers = [ "modesetting" ];
  users.users.max.extraGroups = [ "vboxsf" ];
  
  environment.systemPackages = with pkgs; [ 
    virtualbox
  ];
}
