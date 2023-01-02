#!/bin/sh

# Copyright (c) 2023, Alex Speranza

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

if [ "$#" -lt "1" ]; then
    echo "Error: An argument (the base directory) is mandatory." 1>&2
    exit 1
fi

BASE_DIR="$1"

CURRENT_YEAR="$(date +%Y)"

find "${BASE_DIR}" \
  -type f \
  -exec sed -E -i "s/(\s*[Cc]opyright \([cC]\))( )([0-9]{4})/\1\2${CURRENT_YEAR}/" {} \;
