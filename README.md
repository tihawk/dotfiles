# dotfiles

The configs here are managed by [stow](https://linux.die.net/man/8/stow).

- To stow all configs run `./stow_config.sh`.
- To unstow all configs run `./stow_config.sh remove`.
- Tow stow a single config run `./stow -t $HOME <dir_name>`.
- To unstow a single config run `./stow -D -t $HOME <dir_name>`.

# Notes

There is a flag `--dotfiles`, which allows to rename hidden directories, such as `.whatever-the-name-is` to `dot-whatever-the-name-is`, and them to be preprocessed by stow by replacing `dot-` with `.`. This is useful, so there aren't hidden files and directories in the repo. Quite useful for easier searching that respects hidden files.

This is great and all, but in the latest version of stow on Ubuntu there's a bug with that. The bug is fixed in the newest version of stow, but I will wait for it to get updated in apt, before migrating to that setting.
