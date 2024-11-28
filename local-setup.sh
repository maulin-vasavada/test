#!/bin/bash

JAVA_VERSION=11.0.25-amzn
MAVEN_VERSION=3.9.9

echo "Copying zshrc..."
cp zshrc ~/.zshrc

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing github cli..."
brew install gh

echo "Creating parent folder for all git repositories..."
mkdir ~/gitrepobase

echo "Git clone test repo..."
gh repo clone maulin-vasavada/test ~/gitrepobase

echo "Installing SDKMan..."
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "Installing java "$JAVA_VERSION" ..."
sdk install java $JAVA_VERSION

echo "Installing maven "$MAVEN_VERSION" ..."
sdk install maven $MAVEN_VERSION

echo "Installing gnupg..."
brew install gnupg
