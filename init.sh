#!/usr/bin/env bash

while read -r repo; do
    git clone "https://github.com/akootco/$repo"
done < repos.txt