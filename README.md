- [[nix-environments](https://github.com/haoxiangliew/nix-environments)](#org1abe070)
  - [Installation](#orgec504dd)
  - [[ `./arduino-env` ](https://github.com/haoxiangliew/nix-environments/tree/master/arduino-env)](#org65f353f)
  - [[ `./ccstudio-env` ](https://github.com/haoxiangliew/nix-environments/tree/master/ccstudio-env)](#orgc229624)
  - [[ `./matlab-env` ](https://github.com/haoxiangliew/nix-environments/tree/master/matlab-env)](#org20c8bf7)



<a id="org1abe070"></a>

# [nix-environments](https://github.com/haoxiangliew/nix-environments)

This repository contains my configuration for FHS User Environments on NixOS for apps that misbehave due to NixOS not being FHS compliant.


<a id="orgec504dd"></a>

## Installation

-   Copy respective folders to the location you want, ideally `/home/<username>`
-   Follow instructions below for the respective folder


<a id="org65f353f"></a>

## [ `./arduino-env` ](https://github.com/haoxiangliew/nix-environments/tree/master/arduino-env)

Out-of-tree modules, such as ones from unofficial Arduino boards, may require installation of a vendor-provided compiler. This environment allows you to do so.

-   `nix-build fhs-env.nix`
-   `./arduino-env.sh`
-   Run `arduino`, making sure you are in `arduino-env` when doing so


<a id="orgc229624"></a>

## [ `./ccstudio-env` ](https://github.com/haoxiangliew/nix-environments/tree/master/ccstudio-env)

TI's Code Composer Studio runs in an FHS User Environment just fine. Tested and fully operational with TI LaunchPad w/ MSP432

-   `nix-build fhs-env.nix`
-   Create a directory for the installer, ideally `./installer`
-   Extract CCStudio installer into the directory
-   `./ccstudio-env.sh`
-   Run `ccs**.run` in `./installer/CCS**`
-   Install to any directory, ideally `./ccstudio`
-   Run `ccstudiio`, making sure you are in `ccstudio-env` when doing so
-   If MSP432 SimpleLink, or likewise dependencies are needed, installing to their default directories should be picked up by CCStudio


<a id="org20c8bf7"></a>

## [ `./matlab-env` ](https://github.com/haoxiangliew/nix-environments/tree/master/matlab-env)

MATLAB runs with hardware-acceleration in an FHS User Environment just fine. Tested and fully operational with scripts.

-   `nix-build fhs-env.nix`
-   Create a directory for the installer, ideally `./installer`
-   Extract the MATLAB installer into the directory
-   `./matlab-env.sh`
-   Run `install` in `./installer`
-   Install to any directory, ideally `./matlab`
-   Run `matlab` and make sure you are in `matlab-env` when starting MATLAB
-   Depending on the installer, sometimes the script will show an error regarding the included dependencies, just follow the directions to fix `matlab-env`