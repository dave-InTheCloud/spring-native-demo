curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 22.3.r17-nik
sdk use java 22.3.r17-nik

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install addgroup command
brew install coreutils

sudo dscl . create /Groups/docker
sudo dseditgroup -o edit -a $USER -t user docker