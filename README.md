# github-precomit-hook

How to Add Git Hooks:

go to project root directory and past the hooks directory
open a terminal and: 
- run `cd <project-root-directory-path>`
- run `chmod 744  $(pwd)/hooks` [ Make the hooks directory executable by user ]
- run `bash hooks/setup-git-hooks.sh`