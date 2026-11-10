# AstroNvim Template

![Neovim](https://img.shields.io/badge/Neovim-0.9+-green)
![AstroNvim](https://img.shields.io/badge/AstroNvim-config-blue)

**NOTE:** This is for AstroNvim v5+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🧰 Stack

- Neovim
- AstroNvim
- Treesitter
- LSP (via mason + lspconfig)
- Telescope
- Lazy.nvim

## 📦 Requirements
- Neovim >= 0.9
- git
- ripgrep
- fd

## 🛠 Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/traitimtrongvag/AstroNvim-Template ~/.config/nvim
```

# 🗂 Structure

```text
nvim/
├── init.lua
├── lua/
│   ├── community.lua
│   ├── lazy_setup.lua
│   ├── lsp.lua
│   ├── plugins/
│   │   ├── astrocore.lua
│   │   ├── astrolsp.lua
│   │   ├── astroui.lua
│   │   ├── mason.lua
│   │   ├── none-ls.lua
│   │   ├── telescope.lua
│   │   ├── treesitter.lua
│   │   └── user.lua
│   └── polish.lua
├── lazy-lock.json
├── .luarc.json
├── .neoconf.json
├── .stylua.toml
├── neovim.yml
└── selene.toml
```
## ⚡ Features

- Support `rust`.
- LSP + Autocomplete via mason & lspconfig.
- Fuzzy finder via Telescope.
- Treesitter syntax highlight.
- Lazy.nvim plugin manager.

### Notes

This repo is an override configuration for AstroNvim.
AstroNvim core is managed separately.
