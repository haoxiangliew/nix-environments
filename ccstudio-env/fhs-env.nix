with import <nixpkgs> { };
buildFHSUserEnv {
  name = "ccstudio-env";
  targetPkgs = p:
    (with p;
    [
      alsaLib
      atk
      at-spi2-atk
      at-spi2-core
      cairo
      fontconfig
      freetype
      glib
      glibc
      glibc
      gnome2.GConf
      gtk2
      gtk3
      jre
      libcanberra
      libsecret
      libusb
      libusb-compat-0_1
      libudev0-shim
      ncurses
      ncurses5
      nss
      nssTools
      python2Full
      udev
      unzip
      zlib
    ]) ++ (with p.xorg; [
      libX11
      libXScrnSaver
      libXext
      libXi
      libXrender
      libXtst
    ]);
}
