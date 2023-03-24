<h1 align="center">🌊 HydraVim</h1>

<p align="center"><img src="https://img.shields.io/github/issues/HydraVim/Hydravim?color=171b20&label=Issues%20%20&logo=gnubash&labelColor=e05f65&logoColor=ffffff">&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/github/forks/Hydravim/HydraVim?color=171b20&label=Forks%20%20&logo=git&labelColor=f1cf8a&logoColor=ffffff">&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/github/stars/HydraVim/HydraVim?color=171b20&label=Stargazers&logo=github&labelColor=70a5eb">&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/-Works on my machine-%2378dba9?style=flat&logo=linux&labelColor=171b20&logoColor=ffffff"></p>

</b><br>Welcome to official **Hydra 🌊** Repository! Carefully designed with usability and funcionality in mind , keep the lightness on resources! All-in-one for back-end and front-end developers.</p>

<br />

## ✨ Features
  - Fast startup times
  - Autocompletion with nvim-cmp
  - Terminal with Toggleterm
  - LSP (Language Server Protocol)
  - Automatic LSP with Mason and LSP Config.
  - Syntax highlighting with Treesitter
  - Statusline and Bufferline
  - Integration with Git
  - Easily customize

<details>
  <summary> <b>Themes </b> </summary>

![TNPrint](https://user-images.githubusercontent.com/98850074/200186219-31bc10d3-8818-46ba-820e-ef8b7c5c9e40.png)


<hr>

<br>

![CPPRINT](https://user-images.githubusercontent.com/98850074/200188164-d7ce95dd-cb35-40e8-b192-10aa02b18341.png)

<hr>

<br>

![githubmode](https://user-images.githubusercontent.com/98850074/200182890-3cc9326e-811c-4bd4-a5bc-2cf2931b384b.png)
</details>

<br>

## 🎯 Requirements

- [Neovim](https://neovim.io/) 8.0+
- [Pynvim](https://github.com/neovim/pynvim) 0.4.3+
- [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/) 1.22.0+
- [Nerd Fonts](https://www.nerdfonts.com/) (optional)

<br>

## 🛠 Installation 

After dependencies setup  , execute the command below . Make sure that <a href="https://git-scm.com/" target="_blank"> Git </a> is installed

### 🐧 Linux/🍎macOS
 - Backup of your current nvim
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```
- Clone the HydraVim and start Neovim

```bash
git clone https://github.com/HydraVim/HydraVim.git --depth 1 --branch main ~/.config/nvim && nvim
```

### 🪟 Windows - Test
- Powershell
```powershell
git clone https://github.com/HydraVim/HydraVim.git $HOME\AppData\Local\nvim --depth 1 --branch main && nvim
```
          
<br>
          
## ⭕ Uninstall
  
### 🐧 Linux/🍎macOS
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

### 🪟 Windows
- Powershell
```powershell
Remove-Item -Path $HOME\AppData\Local\nvim -Force
Remove-Item -Path $HOME\AppData\Local\nvim-data -Force
```

<br>

## 🔠 Languages

Nvim supports Language Server Protocol (LSP), which means that it acts as a client for LSP servers. Thus, all language support is done through [Mason (LSP Installer)](https://github.com/williamboman/mason.nvim) and automatically configured by [LSP Config](https://github.com/neovim/nvim-lspconfig). Use the Mason command to manage your language servers.
[Nvim-CMP](https://github.com/hrsh7th/nvim-cmp) is responsible for giving suggestions for completing your code, including snippets.
Syntax highlighting is installed automatically through the
[Tree-sitter](https://github.com/tree-sitter/tree-sitter)

In short: Open HydarVim and start coding.

Read more about lsp [here](https://neovim.io/doc/user/lsp.html).

<br>

## 🐙 Live Server
Development in real time.
<details>
  <summary> <b>Live Server Config</b> </summary>
- Install Live-server

``` shell
npm i -g live-server
```

- Case install fails

``` shell
sudo npm i -g live-server
```

To use follow the instructions below <p>
- Go to `index.html` on Hydravim and open the terminal and type `live-server`, an window will open automatically on your default browser <p>
- The server will be updated automatically.
<br />
</details>


## 💫 Thanks to
We are grateful to the repositories, plugin authors and the Neovim community for making HydraVim possible.  They offer special thanks to AstroVim, NvChad, LunarVim and CosmicVim for their inspiration and resources, as well as to all the plugin developers who have created useful tools for Neovim.

## 🎈 Maintainers
  <span>
    <img src="https://user-images.githubusercontent.com/98850074/200189379-5b831bfd-a902-46c8-914e-284e53308dc2.png" width=100 height=100>
  </span>

  <span> 
    <img src="https://user-images.githubusercontent.com/98850074/200189532-28bd2d72-76e8-4650-a293-9fdfa64c4b73.png" width=100 height=100>
  </span>


## 📖 General

<img src="https://img.shields.io/badge/Mantained:-Yes! (Bug fixes, Repository , Website..)-brightgreen?style=flat">
<img src="https://img.shields.io/badge/State:-Optimized (Utilizable)-brightgreen?style=flat">
<img src="https://img.shields.io/badge/RAM usage:-~138MB/Max-brightgreen?style=flat">
