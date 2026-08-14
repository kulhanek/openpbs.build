# OpenPBS Build Infrastructure

## Ubuntu 24.04 LTS Kernel

### Build Instructions
```bash
$ git clone https://github.com/kulhanek/openpbs.build.git -b ubuntu24.04-ltskernel
$ git clone https://github.com/kulhanek/openpbs.git -b ubuntu24.04-ltskernel
$ cd openpbs
$ cp -r ../openpbs.build/* .
$ ./release.sh
```

This will build the following packages:
* libopenpbs_23.06.06-15_amd64.deb
* libopenpbs-dev_23.06.06-15_amd64.deb
* openpbs-client_23.06.06-15_amd64.deb
* openpbs-execution_23.06.06-15_amd64.deb
* openpbs-server_23.06.06-15_amd64.deb

