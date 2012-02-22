#!/bin/sh
# Copy the Sphinx API doc

dest=../../API
cp -r API/_build/html $dest
touch $dest/.nojekyll   # very important for visible _static
cat > $dest/README <<EOF
This directory contains the API documentation for the package.
The documentation is automatically generated by ../src/api/make.py.
EOF
git add $dest
git commit -am 'Added new official API doc files.'
