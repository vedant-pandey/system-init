xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew dependencies
brew install git
brew install wget
brew install curl
brew tap homebrew/cask-fonts
brew install --cask font-fira-mono-nerd-font
brew install lsd
brew install zig

# install zap zsh and dependencies
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
echo "plug \"wintermi/zsh-lsd\"" >> ~/.zshrc
echo "plug \"MAHcodes/distro-prompt\"" >> ~/.zshrc
echo "plug \"chivalryq/git-alias\"" >> ~/.zshrc

# Node dependencies
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.zshrc
nvm install node
npm install -g yarn
npm i -g nx