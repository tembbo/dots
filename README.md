# dotfiles

![Screenshot](.github/screenshot.png)

These are my personal dotfiles. I've tried to keep things fairly straightforward, but if you wish to copy from this, you'll likely need to tweak some things to fit your own machine.

## Setup

The bootstrap script installs stow, clones/updates the repository and creates symlinks for the configuration files in `~/.config`. This will not install the configured programs.

```sh
curl -fsSL https://raw.githubusercontent.com/tembbo/dots/main/bootstrap.sh | bash
```

You can also run the script locally after cloning:

```sh
bash bootstrap.sh
```
