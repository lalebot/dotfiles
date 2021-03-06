#!/bin/bash

# Copyright (c) 2015 Calinou
# CC0 1.0 Universal
# <https://creativecommons.org/publicdomain/zero/1.0/>

update() {
  for d in "$@"; do
    test -d "$d" -a \! -L "$d" || continue
    cd "$d"
    if [ -d ".git" ]; then
      echo -e "\e[1;36m$PWD\e[0m"
      git pull
    fi
    cd ..
  done
}

update *