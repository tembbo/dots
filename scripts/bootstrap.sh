#!/usr/bin/env bash
set -e

DIR="$HOME/.dots"
REPO="https://github.com/tembbo/dots.git"

if test ! $(which brew); then
	echo "installing homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/opt/homebrew/bin/brew shellenv fish)"
fi

if test ! $(which stow); then
	echo "installing stow"
	brew install stow
fi

if [ -d "$DIR/.git" ]; then
	echo "updating dotfiles..."
	git -C "$DIR" pull --ff-only
else
	echo "cloning dotfiles..."
	git clone "$REPO" "$DIR"
fi

mkdir -p "$HOME/.config"

cd "$DIR"

echo "linking dotfiles..."
stow .

echo "done"
