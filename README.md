configfiles
===========

My personal configuration files (e.g., bash profile, gitconfig, etc.).

Use
---
1. Edit `.bash_profile` with any changes you need.
  - You should probably change line 7 to refer to whatever workplace-specific file you want to keep changes in.
1. Edit `.gitconfig` with any changes you need.
  - You should definitely update your name and email.
1. Run `setup.sh` to create symlinks from `~/.bash_profile` and `~/.gitconfig` to the ones in this repo.
  - Each symlink will fail if those files (or links) already exist.