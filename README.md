# NinjaNvim


![Logo NeoVim](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Neovim-logo.svg/1280px-Neovim-logo.svg.png)

Here you found me neovim config

[![Total de Lineas](https://tokei.rs/b1/github/manuelduarte077/ninja.nvim?category=lines)](https://github.com/XAMPPRocky/tokei)

## Features

- **Intelljsense** [NativeLSP](https://github.com/neovim/nvim-lspconfig) you can select this in the manager settings for lua native lsp [here](https://github.com/TeoDev1611/AstroVim/blob/rocket/lua/lsp/lsp-servers/init.lua) 

- **Comments** The comment tool what use is [vim-commentary](https://github.com/tpope/vim-commentary) this can be activate with gcc and gc can you see the documentation for this amazing tool in the repository all settings are the default.

- **Pairs** For the pairs in the brackets i use [autopairs](https://github.com/steelsojka/pears.nvim)

- **Languages Supported** Any question how setup a language can you open a issue for help you :v:
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

### Descargar NeoVim
Para Windows podemos instalar el package manager [Chocolatey](https://chocolatey.org/install) que es la opción que recomiendo procedamos a instalar con choco:

- Instalar Chocolatey

Este paso lo podemos omitir si ya tienes instalado chocolatey para eso ejecuta este comando en powershell.

```bash
choco -v
```

En el caso qde ue no instalamos chocolatey con este comando pero el Powershell debería estar como administrador

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Ahora que esta instalado cerramos el powershell y lo volvemos a abrir como administrador y proseguimos con este comando

``` bash
choco install neovim -y
```


### Instalar el package manager

Ahora procedemos a instalar el package manager más famoso y maduro llamado Vim Plug una vez llegado a ese sitio corremos el siguiente comando en Powershell como administrador

```bash
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

Una vez terminado el comando proseguimos con la instalación de git.

### Instalación de Git
PODEMOS OMITIR ESTE PASO SI YA TIENES INSTALADO GIT lo puedes comprobar con:

```bash
git --version
```

La pregunta es para que instalamos git por que la mayoría de package managers se basan en git por eso para evitar errores

Vamos a este link Descarga de [Git](https://git-scm.com/)

Damos click en la descargar y damos siguiente siguiente siguiente y cuando pida el editor seleccionamos Vim y listo.

### Configurar el editor
```bash
C:\Users\UserName\AppData\Local\
```
Una vez en la carpeta puedes clonar el proyecto o crear un archivo llamado init.vim para la configuración desde 0.

### Clonar el proyecto
- Tener instalado Node para descargar puedes hacerlo aquí Descarga [](https://nodejs.org/es/)

- Crear la carpeta

mkdir nvim

- Navegar hasta la carpeta nvim

```bash
cd $HOME\AppData\Local\nvim
```

- Despues ejecutar este comando

```bash
git clone https://github.com/manuelduarte077/ninja.nvim .
```
- Finalmente ingrese a neovim para instalar y compilar el empaquetador con esto:

```bash
:PlugInstall
```


