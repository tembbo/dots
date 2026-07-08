# dotfiles

These are my personal dotfiles. I've tried to keep things fairly straightforward, but if you wish to copy from this, you'll likely need to tweak some things to fit your own machine.

## Setup

This requires [Gnu stow](https://www.gnu.org/software/stow/)

```sh
git clone https://github.com/tembbo/dots ~/.dots
cd ~/.dots
stow .
```

This creates symlinks from your `~/.config` directory into `~/.dots`.

## Stack

- **shell:** fish + starship
- **terminal:** ghostty
- **editor:** neovim
- **theme:** vesper
