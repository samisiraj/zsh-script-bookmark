# zsh-script-bookmark

A Zsh utility to save, list, and delete directory bookmarks and jump to them instantly from anywhere in the terminal.

## Installation

Add this to your `~/.zshrc`:

```zsh
source ~/path/to/bookmark.sh
```

Then reload:

```zsh
source ~/.zshrc
```

## Usage

| Command      |      Description                   |
|---           |                                 ---|
| `bm <name>`  | save current directory as bookmark |
| `bmp <name>` | print path of a bookmark           |
| `go <name>`  | jump to saved bookmark             |
| `bml`        | list all bookmarks                 |
| `bmd <name>` | delete a bookmark                  |

## Requirements

- Zsh
- macOS
