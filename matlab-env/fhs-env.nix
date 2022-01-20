with import <nixpkgs> { };
buildFHSUserEnv {
  name = "matlab-env";
  targetPkgs = p:
    (with p; [
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
      gtk3
      jre
      libselinux
      libsndfile
      libxkbcommon
      ncurses
      nspr
      nss
      pam
      pango
      procps
      python3
      udev
      unzip
      xkeyboard_config
      zlib

      # 2021b Update
      at-spi2-core
      at_spi2_atk
      gcc
      gnome2.gtk
      libGL_driver
      libdrm
      gfortran
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
