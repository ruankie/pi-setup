# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# display further configuration to user
echo "============================"
echo "Make sure oh my zsh is already installed!"
echo "Now run the following commands to configure zsh with powerlevel10k theme:"
echo ""
echo "$ nano ~/.zshrc"
echo "then overwrite this variable:"
echo "$ ZSH_THEME=\"powerlevel10k/powerlevel10k\""
echo "then restart zhs and follow prompt or run this to configure:"
echo "$ exec zsh"
echo "$ p10k configure"