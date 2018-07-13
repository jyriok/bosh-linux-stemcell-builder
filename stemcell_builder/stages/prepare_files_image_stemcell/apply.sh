#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

# This only applies for warden container
chmod 1777 $chroot/tmp

pushd $chroot
tar zcf $work/stemcell/image .
popd
