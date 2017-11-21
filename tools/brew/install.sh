#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# shellcheck source=/dev/null
[ -r "${SCRIPT_DIR}/bootstrap.sh" ] && source "${SCRIPT_DIR}/bootstrap.sh"

cat <<EOF

-----------------------------
  Brew Install Applications
-----------------------------

EOF

# Install command-line tools using Homebrew.
brew update

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# dependences
brew install doxygen

# Tools Developer
brew cask install vagrant virtualbox
brew install docker-machine docker-machine-nfs

brew install shellcheck
brew install dnsmasq
brew install ispell
brew install hunspell
brew install graphviz
brew cask install java

# Grab movies
brew install asciinema

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! grep -Fq '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# developer
brew install the_silver_searcher
brew install editorconfig
brew install aspell --with-lang-en

# for the GNU global tag system. Used by ggtags.
brew install --HEAD ctags
brew install global --with-ctags
# program used for plantuml
brew install graphviz
brew install markdown

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install unrar

brew install git git-lfs git-flow
brew install lynx
brew install p7zip

brew install rename
brew install ssh-copy-id
brew install tree

# Gui mergetool
brew install homebrew/gui/meld

# Tools System
brew install htop
brew install peco
brew install terminal-notifier

# Remove outdated versions from the cellar.
brew cleanup

cat <<EOF

------------------------------------
 Brew Applications installed! Enjoy!
------------------------------------

EOF