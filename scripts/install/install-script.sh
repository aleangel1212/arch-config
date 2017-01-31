#!/bin/bash

user="$(whoami)"
echo "copying scripts/utilities to /usr/local/bin"

sudo install -o $user -g $user ../utilities/* /usr/local/bin
