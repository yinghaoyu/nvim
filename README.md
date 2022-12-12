# The awesome neovim configuation

## Brief

Clean and modularized neovim config files.

## Requirements

- NeoVim 0.6.0+

### Tools

- Install `nodejs` for coc extension
- Install `ctag` for function/class/variable list
- Install `figlet` for inputing text ASCII art

## Keyboard Shortcuts

### Basic Mappings

**`Q`** : quits current window (same as command `:q` in vanilla vim)

**`S`** : saves the current file (same as command `:w` in vanilla vim)

### Additional Cursor Movement

| Shortcut   | Action                                                    | Equivalent |
|------------|-----------------------------------------------------------|------------|
| `K`        | Cursor up 5 terminal lines                                | `5k`       |
| `J`        | Cursor down 5 terminal lines                              | `5j`       |
| `H`        | Cursor to the start of the line                           | `0`        |
| `L`        | Cursor to the end of the line                             | `$`        |
| `Ctrl` `k` | Move the view port up 5 lines without moving the cursor   | `Ctrl` `y` |
| `Ctrl` `j` | Move the view port down 5 lines without moving the cursor | `Ctrl` `e` |
| `h`        | Move to the end of this word                              | `e`        |
| `W`        | Move cursor five words forward                            | `5w`       |
| `B`        | Move cursor five words forward                            | `5b`       |

## Window Management

### Create Window Through Split Screen

| Shortcut    | Action                                                                      |
|-------------|-----------------------------------------------------------------------------|
| `s` `k`     | Create a new horizontal split screen and place it above the current window  |
| `s` `j`     | Create a new horizontal split screen and place it below the current window  |
| `s` `l`     | Create a new vertical split screen and place it left to the current window  |
| `s` `h`     | Create a new vertical split screen and place it right to the current window |
| `c` `v`     | Set the two splits to be vertical                                           |
| `c` `h`     | Set the two splits to be horizontal                                         |
| `c` `r` `v` | Rotate splits and arrange splits vertically                                 |
| `c` `r` `h` | Rotate splits and arrange splits horizontally                               |

### Moving the Cursor Between Different Windows

| Shortcut      | Action                         |
|---------------|--------------------------------|
| `SPACE` + `w` | Move cursor to the next window |
| `SPACE` + `l` | Move cursor one window left    |
| `SPACE` + `h` | Move cursor one window right   |
| `SPACE` + `k` | Move cursor one window up      |
| `SPACE` + `j` | Move cursor one window down    |

### Resizing Different Windows

Use the arrow keys to resize the current window.

## Tab Management

| Shortcut    | Action           |
|-------------|------------------|
| `t` `b`     | Create a new tab |
| `t` `h`     | Go one tab left  |
| `t` `l`     | Go one tab right |
| `t` `m` `h` | Move tab left    |
| `t` `m` `l` | Move tab right   |

## Plugins Keybindings

TODO

## Reference

Thanks to [@chemzqm](https://github.com/chemzqm/vimrc)
[@skywind3000](https://github.com/skywind3000/vim)
[@theniceboy](https://github.com/theniceboy/nvim)
