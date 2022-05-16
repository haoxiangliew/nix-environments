# ccstudio-env
Since TI Code Composer Studio doesn't install traditionally on NixOS, this script utilizes a FHS environment to install Code Composer Studio into, ideally, a local directory.

### Installation
1. `git clone` this repository
2. `nix-build fhs-env.nix`
3. Create a directory `./installer`
4. Extract CCStudio installer into that directory
5. `./ccstudio-env.sh`
6. Run `ccs**.run` in `./installer/CCS**`
7. Install to any directory (`./ccstudio` recommended for scripts)
8. Run `ccstudio` and make sure you are in `ccstudio-env` when starting Code Composer Studio
