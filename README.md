# The Elegant Neovim Configuation

<center><img src="./demo.png"></center>

<!-- TOC GFM -->

* [Brief](#brief)
* [Requirements](#requirements)
  - [Tools](#tools)
* [1 Keyboard Shortcuts](#1-keyboard-shortcuts)
  - [1.1 Basic Mappings](#11-basic-mappings)
  - [1.2 Additional Cursor Movement](#12-additional-cursor-movement)
* [2 Window Management](#2-window-management)
  - [2.1 Create Window Through Split Screen](#21-create-window-through-split-screen)
  - [2.2 Moving the Cursor Between Different Windows](#22-moving-the-cursor-between-different-windows)
  - [2.3 Resizing Different Windows](#23-resizing-different-windows)
* [3 Tab Management](#3-tab-management)
* [4 Plugins Keybindings](#4-plugins-keybindings)
  - [4.1 AutoCompletion](#41-autocompletion)
    + [coc](#coc)
  - [4.2 Text Editing Plugins](#42-text-editing-plugins)
    + [vim-table-mode](#vim-table-mode)
    + [undotree](#undotree)
    + [vim-easy-align](#vim-easy-align)
    + [vim-markdown-toc](#vim-markdown-toc)
  - [4.3 Find and Replace](#43-find-and-replace)
    + [nvim-spectre](#nvim-spectre)
  - [4.4 Git Related](#44-git-related)
    + [vim-gitgutter](#vim-gitgutter)
  - [4.5 Others](#45-others)
    + [goyo - Work without distraction](#goyo---work-without-distraction)
    + [figlet](#figlet)
  - [4.6 Custom Snippets](#46-custom-snippets)
    + [Markdown](#markdown)
* [Reference](#reference)

<!-- /TOC -->

## Brief

Clean and modularized neovim config files.

## Requirements

- NeoVim 0.6.0+

### Tools

- Install `nodejs` for coc extension
- Install `ctag` for function/class/variable list
- Install `figlet` for inputing text ASCII art

## 1 Keyboard Shortcuts

### 1.1 Basic Mappings

**`Q`** : Quits current window (same as command `:q` in vanilla vim)

**`S`** : Saves the current file (same as command `:w` in vanilla vim)

### 1.2 Additional Cursor Movement

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

## 2 Window Management

### 2.1 Create Window Through Split Screen

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

### 2.2 Moving the Cursor Between Different Windows

| Shortcut      | Action                         |
|---------------|--------------------------------|
| `SPACE` + `w` | Move cursor to the next window |
| `SPACE` + `l` | Move cursor one window left    |
| `SPACE` + `h` | Move cursor one window right   |
| `SPACE` + `k` | Move cursor one window up      |
| `SPACE` + `j` | Move cursor one window down    |

### 2.3 Resizing Different Windows

Use the arrow keys to resize the current window.

## 3 Tab Management

| Shortcut    | Action           |
|-------------|------------------|
| `t` `b`     | Create a new tab |
| `t` `h`     | Go one tab left  |
| `t` `l`     | Go one tab right |
| `t` `m` `h` | Move tab left    |
| `t` `m` `l` | Move tab right   |

## 4 Plugins Keybindings

### 4.1 AutoCompletion

#### [coc](https://github.com/neoclide/coc.nvim)

| Shortcut        | Action                                           |
|-----------------|--------------------------------------------------|
| `gd`            | Go to definition                                 |
| `gr`            | List references                                  |
| `gy`            | Go to type definition                            |
| `SPACE` `r` `n` | Rename a variable                                |
| `Ctrl` `l`      | (in snippet) Previous Cursor position in snippet |
| `Ctrl` `h`      | (in snippet) Next Cursor position in snippet     |
| `t` `s`         | Translate word under cursor                      |

### 4.2 Text Editing Plugins

#### [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

| Shortcut        | Action            |
|-----------------|-------------------|
| `SPACE` `t` `m` | Toggle table mode |

#### [undotree](https://github.com/mbbill/undotree)

| Shortcut      | Action        |
|---------------|---------------|
| `SPACE` + `u` | Open Undotree |
| `j`           | Newer Version |
| `k`           | Older Version |

#### [vim-easy-align](https://github.com/junegunn/vim-easy-align)

Press `ga` + **symbol** in normal or visual mode to align text based on **symbol**.

#### [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)

In `markdown` files, type `:Gen` then tab, you'll see your options.

### 4.3 Find and Replace

#### [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)

Press `SPACE` `f` to search or replace in cwd.

### 4.4 Git Related

#### [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

| Shortcut        | Action                            |
|-----------------|-----------------------------------|
| `SPACE` `g` `p` | **Show git hunk at current line** |
| `SPACE` `g` `k` | Go to previous git hunk           |
| `SPACE` `g` `j` | Go to next git hunk               |
| `SPACE` `g` `f` | Fold everything except hunks      |

### 4.5 Others

#### [goyo - Work without distraction](https://github.com/junegunn/goyo.vim)

Press `g` `y` to toggle Goyo.

#### [figlet](https://github.com/cmatsuoka/figlet)

Press `tx` and enter your text.

`tx Hello<Enter>`

```txt
 _   _      _ _
| | | | ___| | | ___
| |_| |/ _ \ | |/ _ \
|  _  |  __/ | | (_) |
|_| |_|\___|_|_|\___/
```

### 4.6 Custom Snippets

#### Markdown

| Shortcut     | What it creates     |
|--------------|---------------------|
| `,n`         | ---                 |
| `,b`         | **Bold** text       |
| `,s`         | ~~sliced~~ text     |
| `,i`         | *italic* text       |
| `,d`         | `code block`        |
| `,c`         | big `block of code` |
| `,m`         | - [ ] check mark    |
| `,p`         | picture             |
| `,k`         | [link]()            |
| `,1`         | # H1                |
| `,2`         | ## H2               |
| `,3`         | ### H3              |
| `,4`         | #### H4             |
| `,5`         | ##### H5            |
| `,6`         | ###### H6           |
| `SPACE` `m1` | Turn to # H1        |
| `SPACE` `m2` | Turn to ## H2       |
| `SPACE` `m3` | Turn to ### H3      |
| `SPACE` `m4` | Turn to #### H4     |
| `SPACE` `m5` | Turn to ##### H6    |
| `SPACE` `m5` | Turn to ###### H6   |
| `,l`         | --------            |
| `,t`         | current time        |

`,f` to go to the next `<++>` (placeholder).

`,w` to go to the next `<++>` (placeholder) and then press `Enter` for you.

## Reference

Thanks to [@chemzqm](https://github.com/chemzqm/vimrc)
[@skywind3000](https://github.com/skywind3000/vim)
[@theniceboy](https://github.com/theniceboy/nvim)
