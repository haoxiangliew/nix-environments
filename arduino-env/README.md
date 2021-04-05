# arduino-env
Since Arduino has modules that doesn't install traditionally on NixOS, this script utilizes a FHS environment to install Arduino's dependencies into, ideally, a local directory.

### Installation
1. `git clone` this repository
2. `nix-build fhs-env.nix`
3. `./matlab-env.sh`
4. Run `arduino` and make sure you are in `arduino-env` when starting Arduino
