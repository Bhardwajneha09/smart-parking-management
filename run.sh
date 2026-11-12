#!/bin/sh
set -eu
cd "$(dirname "$0")"
OUT="out"
mkdir -p "$OUT"
find src/main/java -name '*.java' -print > .sources
javac -encoding UTF-8 -d "$OUT" @.sources
exec java -cp "$OUT" parking.ui.ParkingApplication
