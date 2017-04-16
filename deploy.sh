#!/bin/bash

# Build content with hugo.
/home/arran/tools/hugo_0.19_linux_amd64/hugo_0.19_linux_amd64

# Add changes
cd public
git add -A .

# Default message if not specified.
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master
cd ..

echo "Deployed!"
