#/usr/bin/env bash
set -euo pipefail
cd $(dirname ${BASH_SOURCE[0]})

echo "# Summary\n" > SUMMARY.md

for f in ../text/*.md;
do
echo "- [$f]($f)" >> SUMMARY.md;
done

mdbook build --dest-dir ../book
