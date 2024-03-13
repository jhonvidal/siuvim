<h1 align="center">
  <br>
  <a href="https://github.com/jhonvidal/siuvim">
    <img src="https://private-user-images.githubusercontent.com/1105101/312319262-ece5e227-5678-4706-b5a2-c5ab46711582.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTAzMDc2NzgsIm5iZiI6MTcxMDMwNzM3OCwicGF0aCI6Ii8xMTA1MTAxLzMxMjMxOTI2Mi1lY2U1ZTIyNy01Njc4LTQ3MDYtYjVhMi1jNWFiNDY3MTE1ODIucG5nP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LUNyZWRlbnRpYWw9QUtJQVZDT0RZTFNBNTNQUUs0WkElMkYyMDI0MDMxMyUyRnVzLWVhc3QtMSUyRnMzJTJGYXdzNF9yZXF1ZXN0JlgtQW16LURhdGU9MjAyNDAzMTNUMDUyMjU4WiZYLUFtei1FeHBpcmVzPTMwMCZYLUFtei1TaWduYXR1cmU9NjEyZGY3ODY5YzJmZmVhYTA3YmI5MTExZjEzNDhhZTIwYWQyZDEzNDIwMmI5YzJhYzQ0ODlmMWU1ZTU4OGNkYiZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QmYWN0b3JfaWQ9MCZrZXlfaWQ9MCZyZXBvX2lkPTAifQ.pjae_rlfLQxT7MHRQEyI047RGjhbJXGK0hcpbm5ysc4" alt="Markdownify" width="200">
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
  
![document_5154378509489013845b](https://github.com/jhonvidal/siuvim/assets/1105101/874b529f-dbe1-477a-aaf6-13f88dbc894a)

</div>

## Features

In addition to the nvchad based features, I have added third party plugin to improve productivity.

* Support for django framework (template formatter with djlint)
* Autocompletion support for Django framework templates (snippets included)
* LSP configuration for python and htmldjango

## How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Neovim](https://github.com/neovim/neovim)  
(warning! before cloning, you must backup your nvim configuration directory on unix systems located at ~/.config/nvim).
installed on your computer. From your command line for unix-based operating systems:

```bash
# Remove existing config:
$ rm -rf ~/.config/nvim
$ rm -rf ~/.local/share/nvim

# Install config:
$ git clone https://github.com/jhonvidal/siuvim.git ~/.config/nvim/
$ nvim
```

## License

[GPL 3.0](https://github.com/jhonvidal/siuvim/tree/main?tab=GPL-3.0-1-ov-file#readme)

---

