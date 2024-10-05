# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Added info

You can browse or search LazyVim code in `$HOME/.local/share/nvim/lazy/`
so that it's easier to find configurations to modify in `$HOME/.config/nvim/`
The entire setup resides in `$HOME/.local/share/nvim/lazy/LazyVim/lua/lazyvim/`
to inspect the LazyVim nvim configurations.

### Clone the repository

```bash
git clone git@github.com:jenxie/nvim.git "$HOME/.config/nvim"
```

### Installation

```bash
# fedora
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim

# ubuntu
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```

### Start from scratch but keep `$HOME/.config/nvim`

```bash
rm -rf $HOME/.config/nvim/lazy-lock.json $HOME/.local/share/nvim $HOME/.local/state/nvim $HOME/.cache/nvim
```

### Spellcheck files if downloaded

```bash
$HOME/.local/share/nvim/site/spell/

# added good words with for example `zg` ends up in
# docs: https://neovim.io/doc/user/spell.html
$HOME/.config/nvim/spell/
```
