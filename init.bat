@echo off

for /f "tokens=*" %%r in (repos.txt) do (
    git clone https://github.com/akootco/%%r
)