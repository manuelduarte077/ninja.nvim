# NinjaNvim


![Logo NeoVim](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Neovim-logo.svg/1280px-Neovim-logo.svg.png)

Here you found me neovim config

## Features
| Plugin | Docs |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |

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


