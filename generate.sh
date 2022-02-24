#!/bin/sh
set -e

for FILE in `ls *.md`; do
  OUT="./docs/$(echo $FILE | sed 's/\.md$/\.html/')"
  pandoc -s $FILE -o $OUT
  sed -i 's/<head>/<head><link rel="stylesheet" href="https:\/\/cdn.jsdelivr.net\/npm\/water.css@2\/out\/light.css">/' $OUT
  sed -i 's/<img/<img style="display:block;margin:auto;" /g' $OUT
  sed -i 's/<h1/<h1 style="text-align:center;"/' $OUT
done
