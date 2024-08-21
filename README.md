
<h1 align="center">
<a href="https://github.com/jhonvidal/siuvim">
<img src="https://github.com/user-attachments/assets/d92e5a23-3139-4284-8573-110c83a1f60e" width="200" >
</a>
  <br>
  siuvim
  <br>
</h1>

<h4 align="center">Custom configuration for Neovim, based on the NvChad distribution. Designed to develop directly, configurations designed for LSPs, formatters, linters and debuggers.</h4>

<div align="center">
  
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)
[![GitHub Issues](https://img.shields.io/github/issues/NvChad/NvChad.svg?style=flat-square&label=Issues&color=d77982)](https://github.com/jhonvidal/siuvim/issues)
</div>

<p align="center">
  <a href="#key-features">Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#license">License</a>
</p>
<div align="center">

![document_5154378509489013845b](https://github.com/user-attachments/assets/41526078-dbe1-4eda-8e80-07e46a851c20)

</div>

## Features

In addition to the nvchad based features, I have added third party plugin to improve productivity.

* Support for django framework (template formatter with djlint)
* Autocompletion support for Django framework templates (snippets included)
* LSP configuration for python and htmldjango
* Integration with the codeium artificial intelligence tool

## How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Neovim](https://github.com/neovim/neovim)  
(warning! before cloning, you must backup your nvim configuration directory on unix systems located at ~/.config/nvim).
installed on your computer.


## UnInstall
After making your backup, ensure that the directories are clean with the following commands:
```bash
# Remove existing config:

# Linux / MacOS (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

# Flatpak (linux)
rm -rf ~/.var/app/io.neovim.nvim/config/nvim
rm -rf ~/.var/app/io.neovim.nvim/data/nvim
rm -rf ~/.var/app/io.neovim.nvim/.local/state/nvim

# Windows CMD
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data

# Windows PowerShell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
```

## Install

After cleaning, that is, deleting the directory, proceed with the installation as follows:
```bash

# Linux / MacOS (unix):
$ git clone https://github.com/jhonvidal/siuvim.git ~/.config/nvim/ && nvim


# Windows:
# If you're using Command Prompt(CMD)
git clone https://github.com/jhonvidal/siuvim.git %USERPROFILE%\AppData\Local\nvim && nvim

# If you're using PowerShell(pwsh)
git clone https://github.com/jhonvidal/siuvim.git $ENV:USERPROFILE\AppData\Local\nvim && nvim

#If the above path doesnt work, try any of these paths :
#For CMD : %LOCALAPPDATA%\nvim
C:\Users\%USERNAME%\AppData\Local\nvim 
#For PowerShell : $ENV:LocalAppData\nvim
C:\Users\$ENV:USERNAME\AppData\Local\nvim 

```

Run the ```:MasonInstallAll``` command after lazy.nvim finishes downloading the plugins. That is, within the neovim editor write the following commands:

```bash
:MasonInstallAll

:Lazy sync
```

## Update
```Lazy sync``` command

## License

[GPL 3.0](https://github.com/jhonvidal/siuvim/tree/main?tab=GPL-3.0-1-ov-file#readme)

---

