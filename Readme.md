# dotfiles

This repo contains my custom settings and aliases.

![alt text](https://github.com/katarzyna-dusza/dotfiles/blob/master/repo-images/screenshot.png)

## Prerequisites
- git
- homebrew (in case of mac users)
- zsh
- python

## Tools
- [zsh](https://ohmyz.sh/)
- [powerlevel9k](https://github.com/bhilburn/powerlevel9k)
- [autojump](https://github.com/wting/autojump)

## Install theme and set fonts
1. Clone the `powerlevel9k` repo:
```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

```
2. Install [powerline fonts](https://github.com/powerline/fonts):
```bash
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```
3. Install [nerd fonts](https://github.com/ryanoasis/nerd-fonts)
```bash
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```
4. Set the fonts in the iTerm:
- iTerm **Preferences**
- **Profiles**
- **Text** tab
- in the **Font** section, click on the `Change Font` and select Hack Regular Nerd Font Complete with 14pt for example
