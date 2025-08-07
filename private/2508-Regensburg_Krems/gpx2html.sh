#!/bin/bash
set -e

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPTDIR}" >/dev/null || exit

interactiveMapDir=/c/Entwicklung/work/_git/dailyUtils/private/gpx/interactiveMap
if [ ! -d "${interactiveMapDir}" ]; then
    echo "$interactiveMapDir does not exist, aborting"
    exit 1
fi

if [ "$(ls -A "${interactiveMapDir}/input")" ]; then
    echo "Directory ${interactiveMapDir}/input is not empty. Exiting."
    rm ${interactiveMapDir}/input/*.gpx # DEMO
    # exit 1
fi

cp ./*.gpx ${interactiveMapDir}/input/

cd "${interactiveMapDir}"
./install_and_run.sh ./input
