#!/bin/bash
git clone https://github.com/ian-knight-uofa/git-practice-01.git
cd git-practice-01
git fetch --all
git checkout branch1
git checkout main
git merge branch1
git add <file_with_conflict>
git commit -m "Merged branch1 into main with conflict resolution"

