# update (this might take a while on a fresh install)
sudo apt update
sudo apt upgrade -y

# install zhs and set as default shell
sudo apt-get install zsh
chsh -s /bin/zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# display further configuration to user
echo ""
echo "============================"
echo "Done installing dependencies."
echo "Now run the following commands to configure zsh with powerlevel10k theme:"
echo ""
echo "$ nano ~/.zshrc"
echo "then overwrite this variable:"
echo "$ ZSH_THEME=\"powerlevel10k/powerlevel10k\""
echo "then restart the zhs and follow prompt or run this to configure:"
echo "$ p10k configure"