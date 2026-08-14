#!/bin/bash

# BASE CONFIGURATION
export LC_ALL=C
export LANG=C

pbs_name="openpbs"

# Cleanup
rm -f debian
autoreconf -ivf

# Determine System & it's version

# This is ubuntu
os="ubuntu"
os_codename="$(lsb_release -c | awk '{print $2}')";
os_version=0;

if [ -z os ] || [ -z os_version ]; then
	echo "ERROR: Unsupported system detected.";
	exit 1
fi

BUILDDIR=$(mktemp -d);
cp ${pbs_name}.build/* ${BUILDDIR}

# ubuntu 24.04
if [ "x$os_codename" == "xnoble" ]; then
	mv ${BUILDDIR}/control.noble ${BUILDDIR}/control
	sed -i -- 's/+DEBIAN_VERSION//g' ${BUILDDIR}/changelog
fi

ln -s ${BUILDDIR} debian
DEB_BUILD_OPTIONS="nostrip noopt" fakeroot ./debian/rules clean
DEB_BUILD_OPTIONS="nostrip noopt" fakeroot ./debian/rules binary

exit 0
