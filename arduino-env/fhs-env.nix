with import <nixpkgs> { };
buildFHSUserEnv {
  name = "arduino-env";
  targetPkgs = p:
    (with p; [ ncurses arduino zlib ])
    ++ (with p.python3Packages; [ pyserial ]);
  multiPkgs = null;
}
