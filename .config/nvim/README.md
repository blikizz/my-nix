# Normie Neovim

A simple, pre-configured Neovim setup for beginners. No fluff, just works.

![Normie Neovim](assets/normie-nvim.png)

## Install

```bash
curl -fsSL https://gitlab.com/theblackdon/normie-nvim/-/raw/main/install.sh | bash
```

Then restart your shell and run: `nvim`

## Requirements

- Arch, Fedora, or Debian/Ubuntu
- curl
- sudo access

The installer handles everything else (neovim, node, rust, plugins, LSPs).

## Keybindings

Leader key: `Space`

### Main Menu (press `<leader>`)

![Main Menu](assets/menu.png)

| Key | Description |
|-----|-------------|
| `e` | 📁 File Explorer |
| `<space>` | 🔍 Smart Find Files |
| `b` | 📄 +Buffer |
| `d` | 🐛 +Debug |
| `f` | 📂 +Files |
| `g` | 📦 +Git |
| `S` | ⚙️ +Settings |

### File Explorer (press `<leader>e`)

| Key / Mouse | Action |
|-------------|--------|
| `f` / Right-click | Open File Menu |
| `d` / `<C-d>` | Delete |

![File Menu](assets/file-menu.png)

**File Menu Options:**

1. 📁 Add new file/dir
2. ✏️ Rename
3. 📋 Copy
4. 📑 Paste
5. 📤 Move
6. 🗑️ Delete
7. 📎 Yank path
8. 🔓 Open with system
9. 📂 Close directory
10. 🔄 Refresh

### Common Actions

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fr` | Recent files |
| `<leader>fb` | Buffers |
| `<Tab>` / `<S-Tab>` | Next / Prev buffer |
| `<C-s>` | Save |
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover docs |
| `<leader>gg` | Lazygit |
| `<c-/>` | Terminal |

## Troubleshooting

Run `:checkhealth` to verify everything is working.

Your old config is backed up to `~/.config/nvim.backup.<timestamp>`
