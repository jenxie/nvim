# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Additional notes

### Clone the repository

```bash
git clone git@github.com:jenxie/nvim.git "$HOME/.config/nvim"
```

### Installation

```bash
# fedora
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim fzf glow

# ubuntu
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim glow
```

### Merge upstream changes

```bash
# merge
git remote add upstream https://github.com/LazyVim/starter.git
git fetch upstream
git merge upstream/main
# solve the merge conflicts
git add <the-files-with-solved-conflicts>
git commit -am "merged upstream changes"
git push

# rebase
git remote add upstream https://github.com/LazyVim/starter.git
git fetch upstream
git rebase upstream/main
# solve the merge conflicts
git add <the-files-with-solved-conflicts>
git rebase --continue
git push origin main # if this doesn't work, use below else skip
git push --force-with-lease origin main
```

### Start from scratch but keep `$HOME/.config/nvim`

```bash
rm -rf $HOME/.config/nvim/lazy-lock.json \
       $HOME/.local/share/nvim \
       $HOME/.local/state/nvim \
       $HOME/.cache/nvim
```

### Spellcheck files if downloaded

```bash
# docs: https://neovim.io/doc/user/spell.html
$HOME/.local/share/nvim/site/spell/

# added good words with for example `zg` ends up in
$HOME/.config/nvim/spell/
```
