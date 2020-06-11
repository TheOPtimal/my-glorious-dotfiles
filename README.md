# my-glorious-dotfiles
My glorious, absolutely GLORIOUS dotfiles.

- init.vim - Neovim configuration
- .zshrc - ZSH configuration
- .p10k.zsh - Powerlevel10k Config

## Installation
### Prerequisites

For the zsh/powerlevel10k configuration you will need to install the patched Meslo Nerd Fonts.

Download them [here](https://github.com/romkatv/powerlevel10k#fonts)

### Neovim

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && curl -fo $HOME/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/TheOPtimal/my-glorious-dotfiles/master/init.vim && nvim -c ":PlugInstall" -c ":q" -c ":q""
```

### Everything
```bash
bash -c "$(curl -fs https://raw.githubusercontent.com/TheOPtimal/my-glorious-dotfiles/master/installer.sh)"
```
