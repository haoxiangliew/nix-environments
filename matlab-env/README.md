# matlab-env
Since MATLAB doesn't install traditionally on NixOS, this script utilizes a FHS environment to install MATLAB into, ideally, a local directory.

### Installation
1. `git clone` this repository
2. `nix-build fhs-env.nix`
3. Create a directory `./installer`
4. Extract MATLAB installer into that directory
5. `./matlab-env.sh`
6. Run `install` in `./installer`
7. Install to any directory (`./matlab` recommended for scripts)
8. Run `matlab` and make sure you are in `matlab-env` when starting MATLAB
