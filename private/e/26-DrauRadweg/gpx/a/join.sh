#!/bin/bash

python3 /c/Entwicklung/work/_git/dailyUtils/private/gpx/joinGpx/join_gpx.py \
    ../1-Misurina-Lienz.gpx \
    ../2-Lienz-Spittal-an-der-Drau.gpx \
    ../3-Spittal-an-der-Drau-Ferlach.gpx \
    ../4-Ferlach-Lavamund.gpx \
    ../5-Lavamund-Maribor.gpx \
    >0-Misurina-Maribor.gpx
