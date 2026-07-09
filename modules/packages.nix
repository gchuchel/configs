{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ##################
    ## Редакторы     ##
    ##################
    vim
    neovim

    ##################
    ## Система       ##
    ##################
    fish
    git
    wget
    curl
    htop
    tree
    unzip
    gzip
    bzip2
    dos2unix
    xclip
    jq
    psmisc

    ##################
    ## Терминал      ##
    ##################
    alacritty
    tmux
    zellij
    ranger
    yazi
    fzf
    fd
    ripgrep
    cmus
    fastfetch
    bat
    zoxide
    lsd
    starship

    ##################
    ## Музыка        ##
    ##################
    mpd
    mpc
    ncmpcpp
    rmpc

    ##################
    ## X11 / GUI     ##
    ##################
    #dmenu
    i3status
    polybarFull
    i3lock
    xorg.xinit
    xorg.xauth
    flameshot
    dunst
    libnotify
    pcmanfm
    pavucontrol
    alsa-utils
    pulseaudio
    networkmanagerapplet
    networkmanager_dmenu
    wirelesstools
    bluez-tools
    blueman
    brightnessctl
    xzoom
    xrectsel
    conky
    clipmenu
    ncdu
    sxiv
    feh
    picom

    ##################
    ## Браузеры      ##
    ##################
    chromium
    qutebrowser
    telegram-desktop
    w3m
    links2
    lynx

    ##################
    ## Утилиты       ##
    ##################
    aria2
    yt-dlp
    ytfzf
    pass
    atuin
    navi
    tealdeer
    lazygit
    lnav
    zathura
    pandoc
    groff
    texliveSmall
    impala
    bluetui
    walker
    superfile
    ddgr

    ##################
    ## Почта         ##
    ##################
    aerc
    neomutt
    isync
    notmuch
    calcurse

    ##################
    ## Медиа         ##
    ##################
    mpv
    ffmpeg-full

    ##########################
    ## C/C++ Компиляторы     ##
    ##########################
    gcc
    clang
    clang-tools
    gdb
    lldb
    nasm

    ##########################
    ## Сборка                ##
    ##########################
    cmake
    gnumake
    ninja
    meson
    pkgconf
    pkg-config
    binutils

    ##########################
    ## Отладка/профиль       ##
    ##########################
    strace
    ltrace
    valgrind
    gperftools
    sysstat
    elfutils

    ##########################
    ## Go                    ##
    ##########################
    go

    ##########################
    ## Python                ##
    ##########################
    python3
    python3Packages.pip
    python3Packages.virtualenv
    python3Packages.ipython
    python3Packages.numpy
    python3Packages.pandas
    python3Packages.matplotlib
    python3Packages.requests
    python3Packages.flask
    python3Packages.pytest
    python3Packages.black
    python3Packages.mypy
    python3Packages.pygame
    python3Packages.pyopengl
    python3Packages.pyglet
    python3Packages.pysdl2
    python3Packages.glfw
    python3Packages.pillow

    ##########################
    ## Rust                  ##
    ##########################
    rustup

    ##########################
    ## Zig                   ##
    ##########################
    zig

    ##########################
    ## Pascal                ##
    ##########################
    fpc

    ##########################
    ## Haskell               ##
    ##########################
    ghc

    ##########################
    ## Ruby и Perl           ##
    ##########################
    ruby
    perl

    ##########################
    ## Lisp и Scheme         ##
    ##########################
    clisp
    sbcl
    racket
    chicken

    ##########################
    ## Prolog                ##
    ##########################
    swi-prolog
    gprolog

    ##########################
    ## Языки скриптов        ##
    ##########################
    lua
    tcl
    tk

    ##########################
    ## Forth                 ##
    ##########################
    gforth

    ##########################
    ## Nim, D, Odin          ##
    ##########################
    nim
    dmd
    odin

    ##########################
    ## Базы данных           ##
    ##########################
    redis
    mariadb
    docker
    docker-compose
    dive
    lazydocker
    qemu_kvm
    qemu

    ##########################
    ## Веб-сервера           ##
    ##########################
    nginx
    apacheHttpd

    ##########################
    ## Java и PHP            ##
    ##########################
    jdk
    php
    phpPackages.composer

    ##########################
    ## Node.js               ##
    ##########################
    nodejs

    ##########################
    ## Сетевые утилиты       ##
    ##########################
    bind
    mtr
    iperf3
    iotop
    nmon
    bottom
    procs
    duf
    progress
    pv

    ##########################
    ## Архиваторы            ##
    ##########################
    p7zip
    libarchive
    unar
    #unrar

    ##########################
    ## Git и разработка      ##
    ##########################
    git-lfs
    pre-commit
    shellcheck
    difftastic
    tokei
    hyperfine
    ripgrep-all
    sd
    curlftpfs
    sshfs
    doxygen
    include-what-you-use
    cvs

    ##########################
    ## Шрифты                ##
    ##########################
    corefonts
    vistafonts
    font-awesome

    ##########################
    ## Утилиты CLI           ##
    ##########################
    cheat
    broot
    rip2
    pwgen
    tldr
    dust

    ##########################
    ## Сетевые инструменты   ##
    ##########################
    socat
    #ngrok
    goaccess
    entr
    watchexec

    ##########################
    ## GUI / Графика         ##
    ##########################
    gtk3
    gtk4
    glfw
    glew
    glm
    SDL2
    sdl3
    sfml
    raylib
    imgui
    cairo
    pango
    libepoxy
    vulkan-headers
    vulkan-loader
    freetype
    harfbuzz

    ##########################
    ## Linux / Ядро          ##
    ##########################
    libcap
    libcap_ng
    libnl
    libpcap
    libusb1
    eudev
    kmod
    liburing
    libbpf
    libseccomp
    libselinux
    libapparmor
    libmnl
    libnetfilter_conntrack
    libnfnetlink
    libnftnl
    iptables
    nftables
    ethtool
    tcpdump
    e2fsprogs
    lvm2
    cryptsetup

    ##########################
    ## Библиотеки            ##
    ##########################
    boost
    fmt
    spdlog
    openssl
    zlib
    xz
    lz4
    zstd
    brotli
    libarchive
    libuv
    libevent
    sqlite
    postgresql
    hiredis
    yaml-cpp
    jsoncpp
    nlohmann_json
    protobuf
    grpc
    gtest
    libwebsockets
    openal
    glog
    gflags
    ncurses

    ##########################
    ## Интернационализация   ##
    ##########################
    gettext
    icu
    libiconv

    ##########################
    ## X11 / Wayland Dev     ##
    ##########################
    # Основные библиотеки X11
    xorg.libX11
    xorg.libXext
    xorg.libXrender
    xorg.libXrandr
    xorg.libXcursor
    xorg.libXfixes
    xorg.libXi
    xorg.libXinerama
    xorg.libXft
    xorg.libXScrnSaver
    xorg.libXcomposite
    xorg.libXdamage
    xorg.libXau
    xorg.libXdmcp
    
    # Все протоколы X11 (включает все заголовки)
    xorg.xorgproto
    
    # Утилиты для разработки X11
    xorg.utilmacros
    xorg.xdpyinfo
    
    # Wayland
    wayland
    wayland-protocols
    wayland-scanner
    libxkbcommon
    libinput
    libdrm
    mesa

    ##########################
    ## Qt5                   ##
    ##########################
    qt5.qtbase
    qt5.qtbase.dev
    qt5.qtbase.bin
    qt5.qttools
    qt5.qmake
    qt5.qtdeclarative
    qt5.qtquickcontrols
    qt5.qtquickcontrols2
    qt5.qtsvg
    qt5.qtgraphicaleffects
    qt5.qtwebsockets
    qt5.qtnetworkauth
    qt5.qtwebchannel
    qt5.qtwebengine
    qt5.qtmultimedia
    qt5.qtimageformats
    qt5.qt3d
    qt5.qtquick3d
    qt5.qtdatavis3d
    qt5.qtcharts
    qt5.qtserialport
    qt5.qtserialbus
    qt5.qtsensors
    qt5.qtlocation
    qt5.qtpositioning
    qt5.qtconnectivity
    qt5.qtspeech
    qt5.qtscxml
    qt5.qtxmlpatterns
    qt5.qtdoc
    qt5.qttranslations
    qt5.qtx11extras
    qt5.qtwayland
    libsForQt5.qt5ct
    dracula-qt5-theme
    qt5.wrapQtAppsHook

    ##########################
    ## Qt6                   ##
    ##########################
    qt6.qtbase
    qt6.qtbase.dev
    qt6.qtbase.debug
    qt6.qttools
    qt6.qmake
    qt6.qtdeclarative
    qt6.qtsvg
    qt6.qtlottie
    qt6.qtquickeffectmaker
    qt6.qtquicktimeline
    qt6.qtwebsockets
    qt6.qtnetworkauth
    qt6.qtwebchannel
    qt6.qtwebengine
    qt6.qtwebview
    qt6.qthttpserver
    qt6.qtgrpc
    qt6.qtmqtt
    qt6.qtmultimedia
    qt6.qtimageformats
    qt6.qt3d
    qt6.qtquick3d
    qt6.qtquick3dphysics
    qt6.qtdatavis3d
    qt6.qtcharts
    qt6.qtgraphs
    qt6.qtshadertools
    qt6.qtserialport
    qt6.qtserialbus
    qt6.qtsensors
    qt6.qtlocation
    qt6.qtpositioning
    qt6.qtconnectivity
    qt6.qtspeech
    qt6.qtremoteobjects
    qt6.qtscxml
    qt6.qt5compat
    qt6.qtdoc
    qt6.qttranslations
    qt6.qtwayland
    qt6.qtvirtualkeyboard
    qt6.qtlanguageserver
    qt6Packages.qt6ct
    qt6Packages.qca
    qt6Packages.qcoro
    qt6.wrapQtAppsHook

    ##########################
    ## Python Qt биндинги    ##
    ##########################
    python3Packages.pyqt5
    python3Packages.pyside2
    python3Packages.pyqt6
    python3Packages.pyside6
  ];
}
