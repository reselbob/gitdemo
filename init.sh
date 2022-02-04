#!/bin/bash
touch some_code.sh
git add some_code.sh
echo "echo Hello" > some_code.sh
git commit -am 'initial'

git checkout -b new_branch
echo "echo \"Hello World\"" > some_code.sh
git commit -am 'first commit on new_branch'

git checkout main
echo "echo \"Hello World!\"" > some_code.sh
git commit -am 'second commit on main'
git merge new_branch
