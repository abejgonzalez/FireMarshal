#!/bin/bash

set -ex

# make the different spec versions
echo "Make SPEC2017"
make spec17-intspeed
make spec17-intrate

