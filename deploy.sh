#!/bin/bash

# Clean up
rm -rf public

# Build content with hugo.
# /home/arran/tools/hugo_0.19_linux_amd64/hugo_0.19_linux_amd64
hugo

# Copy to other repo
cp -R public/* ../arrwhidev.github.com
cd ../arrwhidev.github.com

# Add changes
git add -A .

# Default message if not specified.
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push
cd ../blog-hugo

echo "Deployed!"
