# OpenPBS Build Infrastructure

These build scripts are based on [CESNET/pbs.build](https://github.com/CESNET/pbs.build).

## Ubuntu 24.04 LTS Kernel

### Dependencies
Install the following packages before building OpenPBS
```bash
# apt-get install -y lsb-release gcc make libtool libhwloc-dev libx11-dev \
                    libxt-dev libedit-dev libical-dev libncurses-dev perl-base \
                    postgresql-server-dev-all postgresql-contrib python3-dev tcl-dev tk-dev swig \
                    libexpat1-dev libssl-dev libxext-dev libxft-dev autoconf \
                    automake dh-make expat libedit2 postgresql python3 postgresql-contrib \
                    sudo tcl tk libical3t64 heimdal-dev git libcjson-dev python-dev-is-python3
```
or use a singularity image generated from "singularity/ubuntu_24.04_openpbs-build.def".

### Build Instructions
```bash
$ git clone https://github.com/kulhanek/openpbs.build.git -b ubuntu24.04-ltskernel
$ git clone https://github.com/kulhanek/openpbs.git -b ubuntu24.04-ltskernel
$ cd openpbs
$ cp -r ../openpbs.build/* .
$ ./release.sh
```

This will build the following packages:
* libopenpbs_23.06.06-15+XXX_amd64.deb
* libopenpbs-dev_23.06.06-15+XXX_amd64.deb
* openpbs-client_23.06.06-15+XXX_amd64.deb
* openpbs-execution_23.06.06-15+XXX_amd64.deb
* openpbs-server_23.06.06-15+XXX_amd64.deb

