with import <nixpkgs> { };
buildFHSUserEnv {
  name = "matlab-env";
  targetPkgs = p:
    (with p;
    [
      alsaLib
      atk
      cacert
      cairo
      cups
      dbus
      fontconfig
      gdk-pixbuf
      glib
      glibc
      glibcLocales
      gst_all_1.gst-plugins-base
      gst_all_1.gstreamer
      gtk3
      libselinux
      libsndfile
      nspr
      nss
      pam
      pango
      procps
      python3
      unzip
      zlib

      # nixos specific
      udev
      jre
      freetype
      ncurses

      # simulink
      libxkbcommon
      xkeyboard_config

      # 2021b Update
      at-spi2-core
      at-spi2-atk
      gcc
      gnome2.gtk
      libstdcxx5
      mesa
      libdrm
      gfortran

      # 2022a Update
      libglvnd

      # 2022b Update
      libuuid

    ]) ++ (with p.xorg; [
      libSM
      libX11
      libXcomposite
      libXcursor
      libXdamage
      libXext
      libXfixes
      libXft
      libXi
      libXinerama
      libXrandr
      libXrender
      libXt
      libXtst
      libXxf86vm
      libxcb
    ]);
}
