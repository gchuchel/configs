{ config, pkgs, ... }:

let
  fishConfig = builtins.readFile ./config/fish/config.fish;
  vimConfig = builtins.readFile ./config/vim-config.vim;
  xinitrc = builtins.readFile ./config/xinitrc;
  i3Config = builtins.readFile ./config/i3/config;
  tmuxConfig = builtins.readFile ./config/tmux.conf;
  polybarConfig = builtins.readFile ./config/polybar/config.ini;
  polybarLaunch = builtins.readFile ./config/polybar/launch.sh;
  powerMenu = builtins.readFile ./scripts/system/power-menu;
  killProcess = builtins.readFile ./scripts/app/kill-process;
  scriptLauncher = builtins.readFile ./scripts/script-launcher;
  wifiMenu = builtins.readFile ./scripts/app/wifi-menu;
  weather = builtins.readFile ./scripts/app/weather;
  starti3 = builtins.readFile ./scripts/system/start-i3;
  starshipConfig = builtins.readFile ./config/starship/starship.toml;
  devShell = builtins.readFile ./modules/dev-shell.nix;
  runScript = builtins.readFile ./scripts/system/run;
  getTgSecret = builtins.readFile ./scripts/system/get-tg-secret;
  tgProxy = builtins.readFile ./scripts/app/tg-proxy;
in
{
  home.username = "max";
  home.homeDirectory = "/home/max";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    xclip
  ];

  # Fish config
  xdg.configFile."fish/config.fish".text = fishConfig;

  # Neovim
  xdg.configFile."nvim/init.vim".text = vimConfig;
  home.file.".vimrc".text = vimConfig;

  # X11
  home.file.".xinitrc".text = xinitrc;

  # i3
  home.file.".config/i3/config".text = i3Config;

  # Tmux
  home.file.".tmux.conf".text = tmuxConfig;

  # Polybar
  home.file.".config/polybar/config.ini".text = polybarConfig;
  home.file.".config/polybar/launch.sh" = {
    text = polybarLaunch;
    executable = true;
  };

  # Scripts
  home.file.".scripts/system/power-menu" = {
    text = powerMenu;
    executable = true;
  };
  home.file.".scripts/app/kill-process" = {
    text = killProcess;
    executable = true;
  };
  home.file.".scripts/script-launcher" = {
    text = scriptLauncher;
    executable = true;
  };
  home.file.".scripts/app/wifi-menu" = {
    text = wifiMenu;
    executable = true;
  };
  home.file.".scripts/app/weather" = {
    text = weather;
    executable = true;
  };
  home.file.".scripts/system/start-i3" = {
    text = starti3;
    executable = true;
  };
  # run script for dmenu
  home.file.".scripts/system/run" = {
    text = runScript;
    executable = true;
  };
  # TG-Proxy scripts
  home.file.".scripts/system/get-tg-secret" = {
    text = getTgSecret;
    executable = true;
  };
  home.file.".scripts/app/tg-proxy" = {
    text = tgProxy;
    executable = true;
  };

  # Starship
  home.file.".config/starship.toml".text = starshipConfig;

  # Development environment in ~/.dev
  home.file.".dev/shell.nix".text = devShell;

  # MPD
  services.mpd = {
    enable = true;
    musicDirectory = "/home/max/music";
  };

  systemd.user.services.mpd-update = {
    Unit = {
      Description = "Update MPD database on startup";
      After = [ "mpd.service" ];
      Requires = [ "mpd.service" ];
    };
    Service = {
      Type = "oneshot";
      ExecStart = "${pkgs.mpc}/bin/mpc update";
    };
    Install = {
      WantedBy = [ "mpd.service" ];
    };
  };
}
