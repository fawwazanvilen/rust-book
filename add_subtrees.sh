#!/bin/zsh

# Array of project names
projects=("branches" "hello_cargo" "hello_world" "guessing_game" "variables" "functions")

# Your GitHub username
username="fawwazanvilen"

for project in "${projects[@]}"
do
    git subtree add --prefix="$project" "git@github.com:$username/${project}_rust-book.git" main --squash
done
