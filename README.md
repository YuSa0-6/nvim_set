# Neovim Configuration

A modern Neovim configuration with LSP, autocompletion, and Claude AI integration.

## Features

- 🚀 Fast startup with lazy loading
- 🎯 LSP support for Ruby and TypeScript
- 🔍 Fuzzy finding with Telescope
- 🌳 File explorer with Neo-tree
- 🤖 Claude AI integration
- ✨ Syntax highlighting with Treesitter
- 📝 Autocompletion with nvim-cmp
- 🔄 Git integration with Gitsigns
- 🖥️ Terminal integration

## Installation

1. Clone this repository:
```bash
git clone https://github.com/YuSa0-6/nvim_set.git ~/.config/nvim
```

2. Start Neovim and let lazy.nvim install the plugins:
```bash
nvim
```

## Plugins

### Core Functionality

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP server installer
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting

### File Navigation

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File explorer

### Git Integration

- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git signs in gutter

### Terminal & UI

- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** - Terminal integration

### AI Integration

- **[claudecode.nvim](https://github.com/coder/claudecode.nvim)** - Claude AI integration

## Key Mappings

### General

| Key | Mode | Action |
|-----|------|--------|
| `<Esc>` | Normal | Clear search highlights |
| `<leader>w` | Normal | Save file |
| `<leader>q` | Normal | Quit |
| `<leader>x` | Normal | Save and quit |

### Window Navigation

| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Move to left window |
| `<C-l>` | Normal | Move to right window |
| `<C-j>` | Normal | Move to lower window |
| `<C-k>` | Normal | Move to upper window |

### File Explorer

| Key | Mode | Action |
|-----|------|--------|
| `<leader>e` | Normal | Toggle Neo-tree |

### Telescope (File Finding)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep |
| `<leader>fb` | Normal | Find buffers |
| `<leader>fh` | Normal | Find help |
| `<C-p>` | Normal | Find files |
| `<C-f>` | Normal | Live grep |

### Terminal

| Key | Mode | Action |
|-----|------|--------|
| `<leader>wp` | Normal | Toggle terminal |

### Claude AI

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cc` | Normal/Visual | Chat with Claude |
| `<leader>ce` | Normal/Visual | Explain code |
| `<leader>cr` | Normal/Visual | Review code |
| `<leader>ct` | Normal/Visual | Generate tests |

### Autocompletion

| Key | Mode | Action |
|-----|------|--------|
| `<C-n>` | Insert | Next completion item |
| `<C-p>` | Insert | Previous completion item |
| `<C-y>` | Insert | Confirm completion |
| `<C-Space>` | Insert | Trigger completion |
| `<C-l>` | Insert | Expand snippet / jump forward |
| `<C-h>` | Insert | Jump backward in snippet |

### UI

| Key | Mode | Action |
|-----|------|--------|
| `<leader>tt` | Normal | Toggle transparency |

## Language Servers

The configuration includes LSP support for:

- **Ruby** - ruby_lsp
- **TypeScript/JavaScript** - ts_ls

Additional language servers can be installed via Mason (`:Mason`).

## Treesitter Languages

Syntax highlighting is enabled for:
- Ruby
- JavaScript
- TypeScript
- Markdown
- Vim
- Vimdoc

## Configuration Structure

```
lua/
├── core/
│   ├── keymaps.lua      # Key mappings
│   ├── options.lua      # Neovim options
│   └── autocmds.lua     # Auto commands
└── plugins/
    ├── init.lua         # Plugin initialization
    ├── lsp.lua          # LSP configuration
    ├── completion.lua   # Autocompletion
    ├── telescope.lua    # Fuzzy finder
    ├── treesitter.lua   # Syntax highlighting
    ├── file-explorer.lua # Neo-tree config
    ├── git.lua          # Git integration
    ├── terminal.lua     # Terminal config
    ├── claude.lua       # Claude AI integration
    └── ...
```

## Customization

To customize the configuration:

1. Edit files in `lua/core/` for general settings
2. Edit files in `lua/plugins/` for plugin-specific settings
3. Add new plugins to `lua/plugins/init.lua`

## License

This configuration is available under the MIT License.