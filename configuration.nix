{ config, pkgs, ... }:

{
  imports = [
    ./modules/virtualbox.nix

    ./hardware-configuration.nix
    ./modules/xserver.nix
    ./modules/i3.nix
    ./modules/fish.nix
    ./modules/packages.nix
    ./modules/path.nix
    ./modules/dmenu.nix
    ./modules/tg.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  users.users.max = {
    isNormalUser = true;
    extraGroups = [ "wheel" "input" ];
    initialPassword = "123";
    shell = pkgs.fish;
  };

  security.sudo.extraRules = [
    {
      groups = [ "wheel" ];
      commands = [ { command = "ALL"; options = [ "NOPASSWD" ]; } ];
    }
  ];

  swapDevices = [{
    device = "/.swapvol/swapfile";
    size = 8192;
  }];

  services.openssh.enable = true;
  system.stateVersion = "24.11";
}
