# dotfiles

My personal configuration files for neovim, tmux, ghostty, pi, Claude Code and zsh. Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── neovim/.config/nvim/
├── tmux/.tmux.conf
├── ghostty/.config/ghostty/config
├── zshrc/.zshrc
├── pi/.pi/agent/
└── claude/.claude/
```

## Requirements

```bash
brew install stow
```

## Installation

```bash
git clone https://github.com/vossenwout/pookie-dotfiles.git ~/dotfiles
cd ~/dotfiles
stow neovim
stow tmux
stow ghostty
stow zshrc
stow pi
stow claude
```

This creates symlinks from the expected config locations to the files in this repo.

## Adding a new config

1. Move the config file/folder into the dotfiles repo, mirroring the home directory structure
2. Run `stow <package>` to create the symlink
3. Commit and push
