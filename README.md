FireMarshal
==================================

This tool builds base images for several linux-based distros that work with qemu,
spike, and firesim. 

This is just a quick primer. To see full documentation, please see the official
documentation:
https://firemarshal.readthedocs.io/en/latest/index.html

# Requirements
The easiest way to use Marshal is to run it via Chipyard
(https://chipyard.readthedocs.io/en/latest/) or FireSim
(https://docs.fires.im/en/latest/). However, this is not required. To run
FireMarshal independently, you will need the following dependencies:

## Standard Packages
centos-requirements.txt is a list of packages for centos7 that are needed by
marshal. You can install these with:
```
cat centos-requirements.txt | sudo xargs yum install -y
```

Package names may be different on other distributions.

### Note for Ubuntu
The libguestfs-tools package (needed for the guestmount command) does not work
out of the box on Ubuntu. See
https://github.com/firesim/firesim-software/issues/30 for a workaround.

## Python
This project was written for python 3.6. You can install all dependencies using:
```
pip3 install python-requirements.txt
```

## RISC-V Tools
In addition to standard libraries, you will need a RISC-V compatible toolchain,
the RISC-V isa simulator (spike), and Qemu.

See the [Chipyard documentation](https://chipyard.readthedocs.io/en/latest/Chipyard-Basics/Initial-Repo-Setup.html#building-a-toolchain)
for help setting up a known-good toolchain and environment.

# Basic Usage
Building workloads:

    ./marshal build workloads/br-base.json

To run in qemu:

    ./marshal launch workloads/br-base.json

To install into FireSim (assuming you cloned this as a submodule of firesim or chipyard):

    ./marshal install workloads/br-base.json
