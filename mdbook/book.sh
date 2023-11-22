#/usr/bin/env bash
set -euo pipefail
cd $(dirname ${BASH_SOURCE[0]})

rm -rf src && mkdir src
echo "# Summary\n" > src/SUMMARY.md

mkdir src/approved
cp ../text/*.md src/approved/

for f in ./src/**/*.md;
do
echo ${f}
echo ${f#./src/}
echo "- [$f](${f#./src/})" >> src/SUMMARY.md;
done

rm -rf ../book/
mdbook build
