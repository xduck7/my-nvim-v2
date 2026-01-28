# my-nvim-v2

## Installation
```
mv ~/.config/nvim ~/.config/nvim.backup
```

```
git clone https://github.com/xduck7/my-nvim-v2.git ~/.config/nvim
```

# Neovim Configuration Keymaps

This document lists all keybindings configured in the Neovim setup.

## Leader Key
The leader key is set to `<Space>`.

## LSP (Language Server Protocol) Keymaps

| Key | Mode | Description |
|-----|------|-------------|
| `gd` | Normal | Go to Definition |
| `K` | Normal | Hover Documentation |
| `<leader>rn` | Normal | Rename Symbol |
| `<leader>cr` | Normal | Rename Symbol (alternative) |
| `<leader>ca` | Normal | LSP Code Action |
| `<leader>cd` | Normal | Line Diagnostics (open float) |
| `gi` | Normal | Go to Implementation |
| `gr` | Normal | Find references (using Snacks picker) |

## Terminal

| Key | Mode | Description |
|-----|------|-------------|
| `<C-t>` | Normal | Toggle terminal |
| `<C-t>` | Terminal | Toggle terminal |

## File Explorer (Neo-tree)

| Key | Mode | Description |
|-----|------|-------------|
| `<S-h>` | Normal | Focus Neo-tree |
| `<leader>e` | Normal | Toggle Neo-tree |

## Window Management

| Key | Mode | Description |
|-----|------|-------------|
| `<S-l>` | Normal | Focus previous window |

## File Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>q` | Normal | Save and quit (`:wq`) |
| `<leader>w` | Normal | Save (`:w`) |

## Buffer Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `<Tab>` | Normal | Cycle to next buffer (BufferLine) |
| `<leader><Tab>` | Normal | Cycle to previous buffer (BufferLine) |
| `<leader>bd` | Normal | Delete current buffer |

## Markview

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>m` | Normal | Toggle Markview preview |

## Commenting

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>c` | Normal | Toggle comment (supports count) |

## Ranger

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>rc` | Normal | Open ranger (neoranger) |
| `<leader>rr` | Normal | Open ranger in current file's directory |

## Git

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>lg` | Normal | Open LazyGit |
| `<leader>gb` | Normal | Toggle Git blame window |
| `<leader>gB` | Normal | Toggle Git blame virtual |

## Search (Seeker)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>ff` | Normal | Find files |
| `<leader><leader>` | Normal | Find files (alternative) |
| `<leader>fg` | Normal | Grep with Seeker |
| `<leader>/` | Normal | Grep with Seeker (alternative) |
| `<leader>fb` | Normal | List buffers (`:ls`) |
| `<leader>fh` | Normal | Open help (`:help`) |

