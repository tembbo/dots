# dotfiles

![Screenshot](.github/screenshot.png)

These are my personal dotfiles. I've tried to keep things fairly straightforward, but if you wish to copy from this, you'll likely need to tweak some things to fit your own machine.

## Setup

Requires [Gnu stow](https://www.gnu.org/software/stow/)

```sh
git clone https://github.com/tembbo/dots ~/.dots
cd ~/.dots
stow .
```

Running `stow .` creates symlinks from `~/.config` to the files in `~/.dots`. If you already have files in `~/.config`, you may run into conflicts and need to choose which versions to keep.