{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # ========== Компиляторы и инструменты ==========
    gcc
    clang
    clang-tools
    gdb
    lldb
    gnumake
    cmake
    meson
    ninja
    pkg-config
    binutils
    
    # ========== X11 ==========
    xorg.libX11.dev
    xorg.libXext.dev
    xorg.libXrender.dev
    xorg.libXrandr.dev
    xorg.libXcursor.dev
    xorg.libXfixes.dev
    xorg.libXi.dev
    xorg.libXinerama.dev
    xorg.libXft.dev
    xorg.libXScrnSaver
    xorg.libXcomposite.dev
    xorg.libXdamage.dev
    xorg.xorgproto
    xorg.utilmacros
    
    # ========== Wayland ==========
    wayland
    wayland-protocols
    wayland-scanner
    libxkbcommon
    libinput
    libdrm
    mesa.dev
    
    # ========== GTK ==========
    gtk3.dev
    gtk4.dev
    gdk-pixbuf.dev
    pango.dev
    cairo.dev
    glib.dev
    
    # ========== Графика ==========
    glfw
    glew
    glm
    SDL2.dev
    sdl3
    sfml
    raylib
    imgui
    libepoxy
    vulkan-headers
    freetype.dev
    fontconfig.dev
    harfbuzz
    
    # ========== Qt6 ==========
    qt6.qtbase.dev
    qt6.qttools
    qt6.qmake
    
    # ========== Языки ==========
    python3
    go
    rustup
    zig
    nodejs
    ruby
    perl
    
    # ========== Базы данных ==========
    postgresql
    sqlite.dev
    redis
    
    # ========== Библиотеки ==========
    boost
    fmt
    spdlog
    openssl.dev
    zlib.dev
    xz.dev
    lz4.dev
    zstd.dev
    brotli.dev
    libarchive
    libuv.dev
    libevent
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
    ncurses.dev
    gettext
    icu.dev
    libiconv
    
    # ========== Утилиты ==========
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
    fzf
    fd
    ripgrep
    bat
    lsd
    zoxide
    starship
  ];
  
  shellHook = ''
    echo "=============================================================="
    echo "DEVELOPMENT ENVIRONMENT LOADED"
    echo "=============================================================="
    echo ""
    echo "Compilers: gcc, clang, gdb, lldb"
    echo "Build: make, cmake, meson, ninja, pkg-config"
    echo "X11: Full X11 development"
    echo "Wayland: wayland, wayland-protocols, libxkbcommon, libinput"
    echo "GTK: gtk3, gtk4"
    echo "Graphics: OpenGL, GLFW, SDL2, SFML, Raylib"
    echo "Qt: qt6"
    echo "Languages: Python, Go, Rust, Zig, Node.js, Ruby, Perl"
    echo "Databases: PostgreSQL, SQLite, Redis"
    echo "Libraries: Boost, fmt, spdlog, openssl, and more"
    echo "=============================================================="
    echo ""
    echo "Starting fish shell..."
    exec fish
  '';
}
