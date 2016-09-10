sudo apt-get update

# Install GIT
sudo apt-get install git

# Go lang Installation
sudo apt-get install -y golang

# Create workspace for go
# Attach workspace path and go installation path to $PATH

mkdir $HOME/goWrkSpc
export GOPATH=$HOME/goWrkSpc
export "PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.bashrc

# Install build libraries
sudo apt-get install -y build-essential libgmp3-dev 

# Clone go-ethereum into work directory
sudo mkdir /usr/local/ethereum
cd /usr/local/ethereum
git clone https://github.com/ethereum/go-ethereum
sudo chmod 777 -R go-ethereum

# Build geth
cd go-ethereum
make geth

# Install solidity compiler
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install solc

