# github-client-side-hooks

This reposiotry shows how to setup Client Side Git Hooks as explained in the [Github Documentation](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)

Simply, copy the hooks directory in your project root and edit the `pre-commit` and `commit-msg` files to do what you want.    

Next run the `setup-git-hooks.sh`
This script creates a soft symbolic link between the `.git/hooks/<hook_file>` and the `<projectroot>/hooks/<hook_file>`

This is a better and more manageable approach instead of manually adding the `<hook_file>` into the `.git/hooks` directory because sometimes (for example) we might accidentally delete the `.git/hooks` folder. In such cases, simply running the shell script `setup-git-hooks.sh` can help us restore back to original. 

- The `pre-commit` file prints guidelines to terminal 
- The `commit-msg` file takes the commit message and prepends the branch name to it.

More client side hooks can be added. Ensure that the name of the file matches the name of the hook.


## How to Add Git Hooks::

go to project root directory and past the hooks directory
open a terminal and: 
- run `cd <project-root-directory-path>`
- run `chmod 744  $(pwd)/hooks` [ Make the hooks directory executable by user ]
- run `bash hooks/setup-git-hooks.sh`
