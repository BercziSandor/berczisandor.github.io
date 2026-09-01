#!/bin/bash
set -e
# set -vx

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGETDIR=$1
TARGETDIR=$(readlink -f "${TARGETDIR}")
if [ ! -d "${TARGETDIR}" ]; then
    echo "${TARGETDIR} does not exist, aborting"
    exit 1
fi

cd "${SCRIPTDIR}" >/dev/null || exit

interactiveMapDir=/c/Entwicklung/work/_git/dailyUtils/private/gpx/interactiveMap/gpx-poi-tools
if [ ! -d "${interactiveMapDir}" ]; then
    echo "$interactiveMapDir does not exist, aborting"
    exit 1
fi

# "${interactiveMapDir}/scripts/install_and_run_gpx_to_html.sh"
"${interactiveMapDir}/scripts/batch_process.sh" "${TARGETDIR}"
