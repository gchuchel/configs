{ config, pkgs, ... }:

{
  environment.variables = {
    # ========== QT ==========
    QTDIR5 = "${pkgs.qt5.qtbase}";
    QT5_PLUGIN_PATH = "${pkgs.qt5.qtbase}/${pkgs.qt5.qtbase.qtPluginPrefix}";
    QT5_QPA_PLATFORM_PLUGIN_PATH = "${pkgs.qt5.qtbase}/${pkgs.qt5.qtbase.qtPluginPrefix}/platforms";
    
    QTDIR6 = "${pkgs.qt6.qtbase}";
    QT6_PLUGIN_PATH = "${pkgs.qt6.qtbase}/${pkgs.qt6.qtbase.qtPluginPrefix}";
    QT6_QPA_PLATFORM_PLUGIN_PATH = "${pkgs.qt6.qtbase}/${pkgs.qt6.qtbase.qtPluginPrefix}/platforms";
    
    QTDIR = "${pkgs.qt6.qtbase}";
    QT_PLUGIN_PATH = "${pkgs.qt6.qtbase}/${pkgs.qt6.qtbase.qtPluginPrefix}";
    QT_QPA_PLATFORM_PLUGIN_PATH = "${pkgs.qt6.qtbase}/${pkgs.qt6.qtbase.qtPluginPrefix}/platforms";
    
    QT_QUICK_CONTROLS_STYLE = "Material";
    CMAKE_PREFIX_PATH = "${pkgs.qt6.qtbase.dev}:${pkgs.qt5.qtbase.dev}:${pkgs.gtk3}/lib:${pkgs.gtk4}/lib";

    # ========== C_INCLUDE_PATH ==========
    C_INCLUDE_PATH = 
      "${pkgs.xorg.xorgproto}/include:" +
      "${pkgs.xorg.libX11}/include:" +
      "${pkgs.xorg.libXext}/include:" +
      "${pkgs.xorg.libXrender}/include:" +
      "${pkgs.xorg.libXrandr}/include:" +
      "${pkgs.xorg.libXcursor}/include:" +
      "${pkgs.xorg.libXfixes}/include:" +
      "${pkgs.xorg.libXi}/include:" +
      "${pkgs.xorg.libXinerama}/include:" +
      "${pkgs.xorg.libXft}/include:" +
      "${pkgs.xorg.libXScrnSaver}/include:" +
      "${pkgs.xorg.libXcomposite}/include:" +
      "${pkgs.xorg.libXdamage}/include:" +
      "${pkgs.freetype}/include/freetype2:" +
      "${pkgs.fontconfig}/include:" +
      "${pkgs.gtk3}/include/gtk-3.0:" +
      "${pkgs.gtk4}/include/gtk-4.0:" +
      "${pkgs.gdk-pixbuf}/include/gdk-pixbuf-2.0:" +
      "${pkgs.pango}/include/pango-1.0:" +
      "${pkgs.cairo}/include/cairo:" +
      "${pkgs.glib}/include/glib-2.0:" +
      "${pkgs.glfw}/include:" +
      "${pkgs.glew}/include:" +
      "${pkgs.glm}/include:" +
      "${pkgs.SDL2}/include/SDL2:" +
      "${pkgs.sdl3}/include/SDL3:" +
      "${pkgs.sfml}/include:" +
      "${pkgs.raylib}/include:" +
      "${pkgs.imgui}/include:" +
      "${pkgs.libepoxy}/include:" +
      "${pkgs.vulkan-headers}/include:" +
      "${pkgs.mesa}/include:" +
      "${pkgs.linuxHeaders}/include:" +
      "${pkgs.libcap}/include:" +
      "${pkgs.libnl}/include:" +
      "${pkgs.libpcap}/include:" +
      "${pkgs.libusb1}/include/libusb-1.0:" +
      "${pkgs.liburing}/include:" +
      "${pkgs.libbpf}/include:" +
      "${pkgs.libseccomp}/include:" +
      "${pkgs.libselinux}/include:" +
      "${pkgs.libapparmor}/include:" +
      "${pkgs.boost}/include:" +
      "${pkgs.fmt}/include:" +
      "${pkgs.spdlog}/include:" +
      "${pkgs.openssl}/include:" +
      "${pkgs.zlib}/include:" +
      "${pkgs.xz}/include:" +
      "${pkgs.lz4}/include:" +
      "${pkgs.zstd}/include:" +
      "${pkgs.brotli}/include:" +
      "${pkgs.libarchive}/include:" +
      "${pkgs.libuv}/include:" +
      "${pkgs.libevent}/include:" +
      "${pkgs.sqlite}/include:" +
      "${pkgs.postgresql}/include:" +
      "${pkgs.hiredis}/include:" +
      "${pkgs.yaml-cpp}/include:" +
      "${pkgs.jsoncpp}/include:" +
      "${pkgs.nlohmann_json}/include:" +
      "${pkgs.protobuf}/include:" +
      "${pkgs.grpc}/include:" +
      "${pkgs.gtest}/include:" +
      "${pkgs.libwebsockets}/include:" +
      "${pkgs.openal}/include:" +
      "${pkgs.glog}/include:" +
      "${pkgs.gflags}/include:" +
      "${pkgs.ncurses}/include:" +
      "${pkgs.gettext}/include:" +
      "${pkgs.icu}/include:" +
      "${pkgs.libiconv}/include";
      
    CPLUS_INCLUDE_PATH = 
      "${pkgs.xorg.xorgproto}/include:" +
      "${pkgs.xorg.libX11}/include:" +
      "${pkgs.xorg.libXext}/include:" +
      "${pkgs.xorg.libXrender}/include:" +
      "${pkgs.xorg.libXrandr}/include:" +
      "${pkgs.xorg.libXcursor}/include:" +
      "${pkgs.xorg.libXfixes}/include:" +
      "${pkgs.xorg.libXi}/include:" +
      "${pkgs.xorg.libXinerama}/include:" +
      "${pkgs.xorg.libXft}/include:" +
      "${pkgs.xorg.libXScrnSaver}/include:" +
      "${pkgs.xorg.libXcomposite}/include:" +
      "${pkgs.xorg.libXdamage}/include:" +
      "${pkgs.freetype}/include/freetype2:" +
      "${pkgs.fontconfig}/include:" +
      "${pkgs.gtk3}/include/gtk-3.0:" +
      "${pkgs.gtk4}/include/gtk-4.0:" +
      "${pkgs.gdk-pixbuf}/include/gdk-pixbuf-2.0:" +
      "${pkgs.pango}/include/pango-1.0:" +
      "${pkgs.cairo}/include/cairo:" +
      "${pkgs.glib}/include/glib-2.0:" +
      "${pkgs.glfw}/include:" +
      "${pkgs.glew}/include:" +
      "${pkgs.glm}/include:" +
      "${pkgs.SDL2}/include/SDL2:" +
      "${pkgs.sdl3}/include/SDL3:" +
      "${pkgs.sfml}/include:" +
      "${pkgs.raylib}/include:" +
      "${pkgs.imgui}/include:" +
      "${pkgs.libepoxy}/include:" +
      "${pkgs.vulkan-headers}/include:" +
      "${pkgs.mesa}/include:" +
      "${pkgs.linuxHeaders}/include:" +
      "${pkgs.libcap}/include:" +
      "${pkgs.libnl}/include:" +
      "${pkgs.libpcap}/include:" +
      "${pkgs.libusb1}/include/libusb-1.0:" +
      "${pkgs.liburing}/include:" +
      "${pkgs.libbpf}/include:" +
      "${pkgs.libseccomp}/include:" +
      "${pkgs.libselinux}/include:" +
      "${pkgs.libapparmor}/include:" +
      "${pkgs.boost}/include:" +
      "${pkgs.fmt}/include:" +
      "${pkgs.spdlog}/include:" +
      "${pkgs.openssl}/include:" +
      "${pkgs.zlib}/include:" +
      "${pkgs.xz}/include:" +
      "${pkgs.lz4}/include:" +
      "${pkgs.zstd}/include:" +
      "${pkgs.brotli}/include:" +
      "${pkgs.libarchive}/include:" +
      "${pkgs.libuv}/include:" +
      "${pkgs.libevent}/include:" +
      "${pkgs.sqlite}/include:" +
      "${pkgs.postgresql}/include:" +
      "${pkgs.hiredis}/include:" +
      "${pkgs.yaml-cpp}/include:" +
      "${pkgs.jsoncpp}/include:" +
      "${pkgs.nlohmann_json}/include:" +
      "${pkgs.protobuf}/include:" +
      "${pkgs.grpc}/include:" +
      "${pkgs.gtest}/include:" +
      "${pkgs.libwebsockets}/include:" +
      "${pkgs.openal}/include:" +
      "${pkgs.glog}/include:" +
      "${pkgs.gflags}/include:" +
      "${pkgs.ncurses}/include:" +
      "${pkgs.gettext}/include:" +
      "${pkgs.icu}/include:" +
      "${pkgs.libiconv}/include";

    # ========== LIBRARY_PATH ==========
    LIBRARY_PATH = 
      "${pkgs.xorg.libX11}/lib:" +
      "${pkgs.xorg.libXext}/lib:" +
      "${pkgs.xorg.libXrender}/lib:" +
      "${pkgs.xorg.libXrandr}/lib:" +
      "${pkgs.xorg.libXcursor}/lib:" +
      "${pkgs.xorg.libXfixes}/lib:" +
      "${pkgs.xorg.libXi}/lib:" +
      "${pkgs.xorg.libXinerama}/lib:" +
      "${pkgs.xorg.libXft}/lib:" +
      "${pkgs.xorg.libXScrnSaver}/lib:" +
      "${pkgs.xorg.libXcomposite}/lib:" +
      "${pkgs.xorg.libXdamage}/lib:" +
      "${pkgs.gtk3}/lib:" +
      "${pkgs.gtk4}/lib:" +
      "${pkgs.gdk-pixbuf}/lib:" +
      "${pkgs.pango}/lib:" +
      "${pkgs.cairo}/lib:" +
      "${pkgs.glib}/lib:" +
      "${pkgs.glfw}/lib:" +
      "${pkgs.glew}/lib:" +
      "${pkgs.SDL2}/lib:" +
      "${pkgs.sdl3}/lib:" +
      "${pkgs.sfml}/lib:" +
      "${pkgs.raylib}/lib:" +
      "${pkgs.libepoxy}/lib:" +
      "${pkgs.mesa}/lib:" +
      "${pkgs.libcap}/lib:" +
      "${pkgs.libnl}/lib:" +
      "${pkgs.libpcap}/lib:" +
      "${pkgs.libusb1}/lib:" +
      "${pkgs.liburing}/lib:" +
      "${pkgs.libbpf}/lib:" +
      "${pkgs.libseccomp}/lib:" +
      "${pkgs.libselinux}/lib:" +
      "${pkgs.libapparmor}/lib:" +
      "${pkgs.boost}/lib:" +
      "${pkgs.fmt}/lib:" +
      "${pkgs.spdlog}/lib:" +
      "${pkgs.openssl}/lib:" +
      "${pkgs.zlib}/lib:" +
      "${pkgs.xz}/lib:" +
      "${pkgs.lz4}/lib:" +
      "${pkgs.zstd}/lib:" +
      "${pkgs.brotli}/lib:" +
      "${pkgs.libarchive}/lib:" +
      "${pkgs.libuv}/lib:" +
      "${pkgs.libevent}/lib:" +
      "${pkgs.sqlite}/lib:" +
      "${pkgs.postgresql}/lib:" +
      "${pkgs.hiredis}/lib:" +
      "${pkgs.yaml-cpp}/lib:" +
      "${pkgs.jsoncpp}/lib:" +
      "${pkgs.protobuf}/lib:" +
      "${pkgs.grpc}/lib:" +
      "${pkgs.gtest}/lib:" +
      "${pkgs.libwebsockets}/lib:" +
      "${pkgs.openal}/lib:" +
      "${pkgs.glog}/lib:" +
      "${pkgs.gflags}/lib:" +
      "${pkgs.ncurses}/lib:" +
      "${pkgs.gettext}/lib:" +
      "${pkgs.icu}/lib:" +
      "${pkgs.libiconv}/lib:" +
      "${pkgs.freetype}/lib:" +
      "${pkgs.fontconfig}/lib";

    # ========== PKG_CONFIG_PATH ==========
    # ВАЖНО: для pkg-config используем .dev output!
    PKG_CONFIG_PATH = 
      "${pkgs.xorg.libX11.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXext.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXrender.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXrandr.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXcursor.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXfixes.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXi.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXinerama.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.libXft.dev}/lib/pkgconfig:" +
      "${pkgs.xorg.xorgproto}/lib/pkgconfig:" +
      "${pkgs.gtk3.dev}/lib/pkgconfig:" +
      "${pkgs.gtk4.dev}/lib/pkgconfig:" +
      "${pkgs.gdk-pixbuf.dev}/lib/pkgconfig:" +
      "${pkgs.pango.dev}/lib/pkgconfig:" +
      "${pkgs.cairo.dev}/lib/pkgconfig:" +
      "${pkgs.glib.dev}/lib/pkgconfig:" +
      "${pkgs.freetype.dev}/lib/pkgconfig:" +
      "${pkgs.fontconfig.dev}/lib/pkgconfig:" +
      "${pkgs.glfw}/lib/pkgconfig:" +
      "${pkgs.glew}/lib/pkgconfig:" +
      "${pkgs.SDL2.dev}/lib/pkgconfig:" +
      "${pkgs.sfml}/lib/pkgconfig:" +
      "${pkgs.raylib}/lib/pkgconfig:" +
      "${pkgs.libepoxy}/lib/pkgconfig:" +
      "${pkgs.mesa}/lib/pkgconfig:" +
      "${pkgs.openssl.dev}/lib/pkgconfig:" +
      "${pkgs.sqlite.dev}/lib/pkgconfig:" +
      "${pkgs.postgresql}/lib/pkgconfig:" +
      "${pkgs.protobuf}/lib/pkgconfig:" +
      "${pkgs.grpc}/lib/pkgconfig:" +
      "${pkgs.gtest}/lib/pkgconfig:" +
      "${pkgs.libwebsockets}/lib/pkgconfig:" +
      "${pkgs.openal}/lib/pkgconfig:" +
      "${pkgs.ncurses.dev}/lib/pkgconfig:" +
      "${pkgs.libarchive}/lib/pkgconfig:" +
      "${pkgs.libuv.dev}/lib/pkgconfig:" +
      "${pkgs.libevent}/lib/pkgconfig:" +
      "${pkgs.gettext}/lib/pkgconfig:" +
      "${pkgs.icu.dev}/lib/pkgconfig";

    # ========== CMAKE ==========
    CMAKE_INCLUDE_PATH = 
      "${pkgs.xorg.xorgproto}/include:" +
      "${pkgs.xorg.libX11}/include:" +
      "${pkgs.gtk3}/include/gtk-3.0:" +
      "${pkgs.gtk4}/include/gtk-4.0:" +
      "${pkgs.glfw}/include:" +
      "${pkgs.SDL2}/include/SDL2:" +
      "${pkgs.sfml}/include:" +
      "${pkgs.raylib}/include:" +
      "${pkgs.boost}/include:" +
      "${pkgs.freetype}/include/freetype2:" +
      "${pkgs.openssl}/include";
      
    CMAKE_LIBRARY_PATH = 
      "${pkgs.xorg.libX11}/lib:" +
      "${pkgs.gtk3}/lib:" +
      "${pkgs.gtk4}/lib:" +
      "${pkgs.glfw}/lib:" +
      "${pkgs.SDL2}/lib:" +
      "${pkgs.sfml}/lib:" +
      "${pkgs.raylib}/lib:" +
      "${pkgs.boost}/lib:" +
      "${pkgs.openssl}/lib";

    # ========== ДЛЯ КОМПИЛЯТОРОВ ==========
    CPATH = "${pkgs.xorg.xorgproto}/include:${pkgs.xorg.libX11}/include:${pkgs.gtk3}/include/gtk-3.0";
    
    LD_LIBRARY_PATH = 
      "${pkgs.xorg.libX11}/lib:" +
      "${pkgs.gtk3}/lib:" +
      "${pkgs.gtk4}/lib:" +
      "${pkgs.glfw}/lib:" +
      "${pkgs.SDL2}/lib:" +
      "${pkgs.sfml}/lib:" +
      "${pkgs.raylib}/lib:" +
      "${pkgs.boost}/lib:" +
      "${pkgs.openssl}/lib";
  };
}
