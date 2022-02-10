#!/bin/sh
set -e
pandoc -s page.md -o index.html
sed -i 's/<head>/<head><link rel="stylesheet" href="https:\/\/unpkg.com\/sakura.css\/css\/sakura-ink.css" type="text\/css">/' index.html
sed -i 's/<img/<img style="display:block;margin:auto;" /g' index.html
sed -i 's/<h1/<h1 style="text-align:center;"/' index.html
