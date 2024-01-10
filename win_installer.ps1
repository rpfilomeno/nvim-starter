﻿# Set policy to avoid errors
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Nodejs
choco install nodejs -y

# Install ripgrep
choco install ripgrep -y

# Install universal-ctags
choco install universal-ctags -y

# Install vim-language-server
npm install -g vim-language-server

# Install bash-language-server
npm install -g bash-language-server

#Python
choco install python -y

# Update pip
python.exe -m pip install --upgrade pip

# Install pynvim
pip install -U pynvim

# Install python-language-server
pip install 'python-lsp-server[all]' pylsp-mypy python-lsp-isort

# Neovim
choco install neovim -y

# backup
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

#Install Lazy + Config
git clone https://github.com/rpfilomeno/nvim-starter $env:LOCALAPPDATA\nvim

# Optioal Clean
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force