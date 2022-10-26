# NinjaNvim


![Logo NeoVim](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Neovim-logo.svg/1280px-Neovim-logo.svg.png)

Here you found me neovim config

[![Total de Lineas](https://tokei.rs/b1/github/manuelduarte077/ninja.nvim?category=lines)](https://github.com/XAMPPRocky/tokei)

## Features

- **Intelljsense** [NativeLSP](https://github.com/neovim/nvim-lspconfig) you can select this in the manager settings for lua native lsp [here](https://github.com/TeoDev1611/AstroVim/blob/rocket/lua/lsp/lsp-servers/init.lua) 

- **Comments** The comment tool what use is [vim-commentary](https://github.com/tpope/vim-commentary) this can be activated it with gcc and gc can you see the documentation for this amazing tool in the repository all settings are the default.

- **Pairs** For the pairs in the brackets i use [autopairs](https://github.com/steelsojka/pears.nvim)

- **Languages Supported** Any question regarding how to set up a language can you open an issue to help you out :v:
  - Dart
  - Flutter
  - Rust
  - Go
  - HTML
  - CSS
  - Python
  - JavaScript
  - EditorConfig **This not a language only a tool :smiley:**
  - Json, Toml, Yaml

- **File Explorer** I use the awesome asynchronus file explorer [Fern](https://github.com/lambdalisue/fern.vim) you can open this with ``<leader>n`` into the left side and ``<C-m>`` into the full screen

- **Utils for the editor**
  - ```Ctrl-ArrowKeys``` for natigate into the panels
  - ```Space w``` for save
  - ```Space q``` for close
  - ```Space so``` for reload
  - ````Tab and shift tab```` for advance and back into the buffers
  - `````> and <````` for indent and unindent
  - ````jk and Ctrl-c```` for go to the normal mode

## Installation

### Download NeoVim
For Windows we can install the package manager [Chocolatey](https://chocolatey.org/install) this is the option that I recommend following to isntall with choco:

- Install Chocolatey

We can skip this step if you have installed chocolatey, you can execute this command in powershell.

```bash
choco -v
```

If you can install chocolatey, you can use this command in Powershell using the administrador

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

After the installing, close the powershell and re open the administrador to continue with this command

``` bash
choco install neovim -y
```


### Install package manager

Now, we can proceed installing the most famous package manager called Vim Plug once it gets the site. We close the next command using Powershell like administrador

```bash
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

Once it is done, we use the command to continue with the git installation 


### Git installation
We can skip this step if you have installed Git and you could check with this:
```bash
git --version
```

Wondering why git was installed, to avoid errors in the package managers based on git

Please go to this link to download [Git](https://git-scm.com/)

Click download and then next next next. When it is asking the editor, you select the Vim and ready.

### Set up the editor
```bash
C:\Users\UserName\AppData\Local\
```
Once you get the folder, you may clone the project or create a file called init.vim to set up from 0.

### Clone the proyecto
- Installed Node, you can get it here [](https://nodejs.org/es/)

- Move the folder

mkdir nvim

- Browse until the file nvim

```bash
cd $HOME\AppData\Local\nvim
```

- After executing this command 

```bash
git clone https://github.com/manuelduarte077/ninja.nvim .
```
- You can finally add neovim to install and compiled packer with this:

```bash
:PlugInstall
```


