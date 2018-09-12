#!/bin/bash
#
# generate README.md from repo structure
#

echo '# Release notes list' > README.md

for DIR in $(find * -type d -maxdepth 1);do
  echo -e "\n## ${DIR}\n" >> README.md
  for FILE in $(find ${DIR}/* -type f -exec basename {} .md ';');do
    echo "- [${FILE}](${DIR}/${FILE})" >> README.md
  done
done
