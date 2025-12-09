#!/bin/bash
set -e
# set -vx

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPTDIR}" >/dev/null || exit

interactiveMapDir=/c/Entwicklung/work/_git/dailyUtils/private/gpx/interactiveMap
if [ ! -d "${interactiveMapDir}" ]; then
    echo "$interactiveMapDir does not exist, aborting"
    exit 1
fi

cd "${interactiveMapDir}"
./install_and_run.sh "${SCRIPTDIR}/gpx"
