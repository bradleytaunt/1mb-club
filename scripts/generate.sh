#!/bin/sh

#define parameters which are passed in.
SIZE=$1
URL=$2

#define the template.
cat  << EOF
---
pageurl: $URL
size: $SIZE
---
EOF
