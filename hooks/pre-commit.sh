#!/bin/sh

date=$(date +%s)
file_in=$1

echo "Replacing occurences of <date=...>..."
sed -E -i "" "s/<date=.+>/<date=${date}>/" $file_in
echo "Replaced all occurences of <date=...> in $file_in."

# Re-add all files.
git add .

exit 0
