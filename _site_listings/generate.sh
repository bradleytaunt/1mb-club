#!/bin/sh

#define parameters which are passed in.
SIZE=$1
URL=$2

#define the template.
cat  << EOF > $URL.md
---
pageurl: $URL
size: $SIZE
---
EOF
