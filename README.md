# panehop

![panehop](https://img.shields.io/badge/panehop-blue.svg)

## Overview

`panehop` is a lightweight tmux plugin that lists all panes across sessions and windows in an interactive [fzf](https://github.com/junegunn/fzf) interface. Quickly switch to a pane with Enter or kill a pane with Ctrl-X, all while previewing pane contents in real-time.

## Features

- List panes from all tmux sessions and windows
- Live pane content preview
- Switch to a pane with Enter
- Kill a pane with Ctrl-X (and reload the list)
- Minimal dependencies: tmux, fzf, TPM (Tmux Plugin Manager) or manual setup

## Demo

![Demo GIF](https://user-images.githubusercontent.com/…/demo.gif)

> *Demo GIF is illustrative; actual appearance may vary.*

## Requirements

- tmux v2.6+
- [fzf](https://github.com/junegunn/fzf)
- [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm) (optional)

## Installation

### TPM (Recommended)

1. Add to your `~/.tmux.conf`:
   ```tmux
   set -g @plugin 'yourname/panehop'
   run '~/.tmux/plugins/tpm/tpm'
   ```
2. Reload tmux configuration:
   ```
   prefix + : source-file ~/.tmux.conf
   ```
3. Install plugins:
   ```
   prefix + I
   ```

### Manual

```bash
git clone https://github.com/yourname/panehop.git ~/.tmux/plugins/panehop
```

Add to your `~/.tmux.conf`:
```tmux
run-shell "~/.tmux/plugins/panehop/panehop.tmux"
```

Reload tmux or restart your session.

## Usage

- Press `prefix + s` (default) to launch the pane switcher
- Use arrow keys or type to filter panes
- Press Enter to switch to a selected pane
- Press Ctrl-X to kill a pane and refresh the list

## Configuration

- To change the key binding, add to `~/.tmux.conf`:
  ```tmux
  set -g @tmux_panehop_key 'S'  # e.g., prefix + Shift-S
  ```
- For advanced fzf options, edit `bin/panehop` directly.

## Contributing

1. Fork this repository
2. Clone locally (`git clone ...`)
3. Make changes in `bin/panehop` or `panehop.tmux`
4. Test and submit a Pull Request

## License

MIT © [Your Name]
