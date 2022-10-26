- [[nix-environments](https://git.sr.ht/~haoxiangliew/nix-environments)](#org08b831b)
  - [Installation](#org8655f1f)
  - [`./arduino-env`](#org3592ef4)
  - [`./ccstudio-env`](#orgc3775d3)
  - [`./matlab-env`](#org9327e5b)



<a id="org08b831b"></a>

# [nix-environments](https://git.sr.ht/~haoxiangliew/nix-environments)

This repository contains my configuration for FHS User Environments on NixOS for apps that misbehave due to NixOS not being FHS compliant.


<a id="org8655f1f"></a>

## Installation

-   Copy respective folders to the location you want, ideally `/home/<username>`
-   Follow instructions below for the respective folder


<a id="org3592ef4"></a>

## `./arduino-env`

Out-of-tree modules, such as ones from unofficial Arduino boards, may require installation of a vendor-provided compiler. This environment allows you to do so.

-   `nix-build fhs-env.nix`
-   `./arduino-env.sh`
-   Run `arduino`, making sure you are in `arduino-env` when doing so


<a id="orgc3775d3"></a>

## `./ccstudio-env`

TI's Code Composer Studio runs in an FHS User Environment just fine. Tested and fully operational with TI LaunchPad w/ MSP432

-   `nix-build fhs-env.nix`
-   Create a directory for the installer, ideally `./installer`
-   Extract CCStudio installer into the directory
-   `./ccstudio-env.sh`
-   Run `ccs**.run` in `./installer/CCS**`
-   Install to any directory, ideally `./ccstudio`
-   Run `ccstudiio`, making sure you are in `ccstudio-env` when doing so
-   If MSP432 SimpleLink, or likewise dependencies are needed, installing to their default directories should be picked up by CCStudio


<a id="org9327e5b"></a>

## `./matlab-env`

MATLAB runs with hardware-acceleration in an FHS User Environment just fine. Tested and fully operational with scripts.

-   `nix-build fhs-env.nix`
-   Create a directory for the installer, ideally `./installer`
-   Extract the MATLAB installer into the directory
-   `./matlab-env.sh`
-   Run `install` in `./installer`
-   Install to any directory, ideally `./matlab`
-   Run `matlab` and make sure you are in `matlab-env` when starting MATLAB
-   Depending on the installer, sometimes the script will show an error regarding the included dependencies, just follow the directions to fix `matlab-env`