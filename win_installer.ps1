# Set policy to avoid errors
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install  git
choco install git -y

# Nodejs
choco install nodejs -y

# Install ripgrep
choco install ripgrep -y

# Install fd-find
choco install fd -y

# Install fuzzy-find
choco install fzf -y

# bes cd replacement
choco install zoxide -y
Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })

# Install gzip
choco install gzip -y

# Install tree-sitter binary
choco install tree-sitter -y

# Install universal-ctags
choco install universal-ctags -y

# Install sipport node js
npm install -g neovim

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
pip install 'python-lsp-server[all]' pylsp-mypy python-lsp-isort ruff-lsp pyright

# Neovim
choco install neovim --pre -y

# backup
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

#Install Lazy + Config
git clone https://github.com/rpfilomeno/nvim-starter $env:LOCALAPPDATA\nvim

# Optioal Clean
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
