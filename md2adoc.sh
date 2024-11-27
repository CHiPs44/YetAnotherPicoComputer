#!/usr/bin/env bash

# from https://matthewsetter.com/convert-markdown-to-asciidoc-withpandoc/

find . -type f -name "*.md" \
    -exec pandoc \
    --atx-headers \
    --verbose \
    --wrap=none \
    --toc \
    --reference-links \
    -t asciidoc -o {}.adoc \
    {} \;

# NB: needs rename (deb) package installed
find ./ -type f -name "*.adoc" -exec rename s/".md"/""/g {} \;

# EOF
