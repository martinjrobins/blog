#!/bin/bash

destination_dir=~/git/martinjrobins.github.io
echo "building to ${destination_dir}"
jekyll build --destination ${destination_dir}
cd ${destination_dir}
git add .
git commit -m "updated webpage using publish.sh"
git push
