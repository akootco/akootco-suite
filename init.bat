@echo off
setlocal enabledelayedexpansion

set "repos=alleycat bluefox choco latte plushies edulis"

for %%r in (%repos%) do (
    git clone https://github.com/akootco/%%r
)