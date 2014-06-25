# Vim Key Mappings

## Leader Key (`,`) Mappings

### General

| Mode     | Key               | Action                                                                         |
| :------: | :---------------: | :----------------------------------------------------------------------------: |
| `all`    | `<leader>=`       | Adjust viewports to be the same size                                           |
| `all`    | `<leader>fc`      | Find merge conflict markers                                                    |
| `visual` | `<leader>0`       | Run the visually selected code in python and replace it with the output        |
| `normal` | `<leader>f#`      | Set foldlevel to `#` where `0 ≤ # ≤ 9`                                         |
| `normal` | `<leader>n`       | Quickly disable search highlighting                                            |
| `normal` | ```<leader>`` ``` | Force quit all                                                                 |
| `normal` | `<leader>q`       | Quit all                                                                       |
| `normal` | `<leader>e`       | Fast editing of the .vimrc                                                     |
| `normal` | `<leader>o`       | Make the current window the only one on the screen                             |
| `normal` | `<leader>p`       | Copy the full path of the current file to the clipboard                        |
| `normal` | `<leader>f`       | Open Quickfix                                                                  |
| `normal` | `<leader>cd`      | Switch (`cd`) to the directory of the open buffer                              |
| `normal` | `<leader>m`       | Maximize current split                                                         |
| `normal` | `<leader>,`       | Switch to previous split                                                       |
| `normal` | `<leader>ff`      | Display all lines with keyword under cursor and ask which one to jump to       |
| `normal` | `<leader>s`       | Write the whole buffer to the current file                                     |
| `normal` | `<leader>jt`      | Reformat `JSON` with `python -m json.tool`                                     |
| `normal` | `<leader>tt`      | Toggle [Tagbar](http://majutsushi.github.io/tagbar/)                           |
| `normal` | `<leader>2`       | Toggle [Tagbar](http://majutsushi.github.io/tagbar/)                           |
| `normal` | `<leader>u`       | Toggle [undotree](https://github.com/mbbill/undotree)                          |
| `normal` | `<leader>nbu`     | Install and update configured plugins asynchronously, except for outdated ones |
| `normal` | `<leader>nbua`    | Install and update all configured plugins asynchronously                       |
| `normal` | `<leader>tag`     | Use [Dispatch](https://github.com/tpope/vim-dispatch) to run `ctags -R`        |

### Spelling

| Mode     | Key               | Action                                                                                 |
| :------: | :---------------: | :------------------------------------------------------------------------------------: |
| `normal` | `<leader>ss`      | Toggle spell                                                                           |
| `normal` | `<leader>sj`      | Move to next misspelled word after the cursor                                          |
| `normal` | `<leader>sk`      | Move to previous misspelled word before the cursor                                     |
| `normal` | `<leader>sa`      | Add word under the cursor as a correctly spelled word and move to next misspelled word |
| `normal` | `<leader>sd`      | Once, for the word under/after the cursor suggest correctly spelled words              |
| `normal` | `<leader>sf`      | For the word under/after the cursor suggest correctly spelled words                    |

### Edit Helpers (all modes) [http://vimcasts.org/e/14](http://vimcasts.org/e/14)

| Key          | Action                                                                                                 |
| :----------: | :----------------------------------------------------------------------------------------------------: |
| `<leader>ew` | Start command to edit in the current buffer with the directory of the current buffer pre-populated     |
| `<leader>es` | Start command to edit in a new horizontal split with the directory of the current buffer pre-populated |
| `<leader>ev` | Start command to edit in a new vertical split with the directory of the current buffer pre-populated   |
| `<leader>et` | Start command to edit in a new tab with the directory of the current buffer pre-populated              |

### Formatting shortcuts

| Mode     | Key           | Action                                                                   |
| :------: | :-----------: | :----------------------------------------------------------------------: |
| `normal` | `<leader>fef` | Format the file using C-indenting and ‘lisp’                             |
| `normal` | `<leader>f$`  | Strip Trailing Whitespace                                                |
| `visual` | `<leader>s`   | Sort selected lines                                                      |
| `normal` | `<leader>fjs` | Format JavaScript files using [`jsbeautifier`](http://jsbeautifier.org/) |

### Window shortcuts (normal mode)

| Key           | Action                                                   |
| :-----------: | :------------------------------------------------------: |
| `<leader>v`   | Make vertical split and move cursor to it                |
| `<leader>s`   | Make horizontal split and move cursor to it              |
| `<leader>vsa` | Open a vertical split for each buffer in the buffer list |

### [Tabular](https://github.com/godlygeek/tabular) (normal and visual modes)

| Key             | Action                                                         |
| :-------------: | :------------------------------------------------------------: |
| `<leader>a&`    | Line up all lines on `&`s                                      |
| `<leader>a|`    | Line up all lines on `|`s                                      |
| `<leader>a=`    | Line up all lines on `=`s                                      |
| `<leader>a:`    | Line up all lines on `:`s                                      |
| `<leader>a::`   | Line up all lines on `:`s, excluding `:` from the search match |
| `<leader>a,`    | Line up all lines on `,`s                                      |
| `<leader>a,,`   | Line up all lines on `,`s, excluding `,` from the search match |
| `<leader>a<bar> | Line up all lines on spaces                                    |

### [Fugitive](https://github.com/tpope/vim-fugitive) (normal mode)

| Key          | Action                                                                                       |
| :----------: | :------------------------------------------------------------------------------------------: |
| `<leader>gs` | Bring up the output of `git-status` in the preview window                                    |
| `<leader>gd` | Perform a vimdiff against the current file in the version in the index                       |
| `<leader>gc` | A wrapper around `git-commit`, if there is nothing to commit, `git-status` is called instead |
| `<leader>gb` | Run git-blame on the file and open the results in a scroll bound vertical split              |
| `<leader>gl` | Load all previous revisions of the current file into the quickfix list                       |
| `<leader>gp` | `git push`                                                                                   |
| `<leader>gr` | Wrapper around git-rm that deletes the buffer afterward                                      |
| `<leader>gw` | Write to the current file's path and stage the results                                       |
| `<leader>ge` | Edit a revision                                                                              |
| `<leader>gi` | `git add -p`                                                                                 |
| `<leader>gg` | Toggle [Signify](https://github.com/mhinz/vim-signify) (git gutter)                          |
| `<leader>gv` | Open [Gitv](http://www.gregsexton.org/portfolio/gitv/) in browser mode                       |
| `<leader>gV` | Open [Gitv](http://www.gregsexton.org/portfolio/gitv/) in file mode                          |


### [Go](http://golang.org/) files (normal mode)

| Key          | Action                                                                    |
| :----------: | :-----------------------------------------------------------------------: |
| `<leader>d`  | Show the relevant GoDoc for the word under the cursor                     |
| `<leader>r`  | Calls `go run` for the current file                                       |
| `<leader>b`  | Calls `go build` for the current package                                  |
| `<leader>t`  | Calls `go test` for the current package                                   |
| `<leader>ds` | Goto declaration/definition, results are shown in a split window          |
| `<leader>dv` | Goto declaration/definition, results are shown in a vertical split window |
| `<leader>dt` | Goto declaration/definition, results are shown in a tab window            |

### [VimShell](https://github.com/Shougo/vimshell.vim) (normal mode)

| Key          | Action                                            |
| :----------: | :-----------------------------------------------: |
| `<leader>c`  | Runs VimShell in a horizontal split buffer window |
| `<leader>cc` | Runs VimShell in a horizontal split buffer window |
| `<leader>cn` | Runs `node` in VimShell interpreter               |
| `<leader>cl` | Runs `lua` in VimShell interpreter                |
| `<leader>cr` | Runs `irb` (Ruby) in VimShell interpreter         |
| `<leader>cp` | Runs `python` in VimShell interpreter             |

## Normal Mode

### Function Key Mappings

| Key   | Action                                                                      |
| :---: | :-------------------------------------------------------------------------: |
| `F1`  | Help `Unite`                                                                |
| `F2`  | Open [`vimfiler`](https://github.com/Shougo/vimfiler.vim) File Explorer     |
| `F3`  | Open [`Startify`](https://github.com/mhinz/vim-startify) Start Screen       |
| `F4`  | `UniteSessionSave`                                                          |
| `F5`  | Toggle [`GoldenView`](http://zhaocai.github.io/GoldenView.Vim/) Auto Resize |
| `F12` | Toggle Paste Mode                                                           |

### Ctrl Key Mappings

TODO(jrubin)

### Shift Key Mappings

TODO(jrubin)

### Regular Key Mappings

TODO(jrubin)

## Insert Mode

### Ctrl Key Mappings

TODO(jrubin)

## Visual Mode

### Ctrl Key Mappings

TODO(jrubin)

### Regular Key Mappings

TODO(jrubin)

## Command Line Mode

TODO(jrubin)
