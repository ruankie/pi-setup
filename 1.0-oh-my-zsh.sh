# update (this might take a while on a fresh install)
sudo apt update
sudo apt upgrade -y

# install zhs and set as default shell
sudo apt-get install zsh -y
chsh -s /bin/zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Done installing oh my zsh."