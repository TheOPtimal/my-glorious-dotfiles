# my-glorious-dotfiles
My glorious, absolutely GLORIOUS dotfiles.

- init.vim - Neovim configuration
- .zshrc - ZSH configuration
- .p10k.zsh - Powerlevel10k Config

## Installation
### Neovim

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && curl -fo $HOME/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/TheOPtimal/my-glorious-dotfiles/master/init.vim 
```
Then, inside Neovim run :PlugInstall to install everything.
