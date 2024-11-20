# Dotfiles

My personal configuration files for vim, tmux etc.

## Bash
add the following lines add the end of your .bashrc file
```
if [ -f ~/dotfiles/bash/.bashrc-custom]; then
  . ~/dotfiles/bash/.bashrc-custom
fi
``` 

## Alacritty 
From the home directory
```
ln -s ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
```

## Tmux
From the home directory
```
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

## Vim
From the home directory
```
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
```

Install the plugin manager 
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Neovim
From the home directory
```
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/.init.vim
```
Install the plugin manager 
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```