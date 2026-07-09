{ config, pkgs, tg-ws-proxy, ... }:

{
  # Установка пакета
  home-manager.users.max = { ... }: {
    home.packages = with pkgs; [
      tg-ws-proxy.packages.${pkgs.system}.default
    ];
  };

  # ========== TG-WS-PROXY СЕРВИС ==========
  systemd.user.services.tg-ws-proxy = {
    description = "Telegram MTProto WS Bridge Proxy";
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${tg-ws-proxy.packages.${pkgs.system}.default}/bin/tg-ws-proxy --port 1080";
      Restart = "always";
      RestartSec = 10;
      StandardOutput = "journal";
      StandardError = "journal";
    };
  };
}
