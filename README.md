# Introduction

This is my neovim configuration. The plugin management is done by LazyVim.

# Custom Shortcuts

Shortcuts for plugin functionality and general use. <Leader> is set to Space.

| Shortcut          | Mode          | Description                                                                |
|-------------------|---------------|----------------------------------------------------------------------------|
| `<C-Bs>`          | Insert        | Delete word backwards                                                      |
| `<Leader>f`       | Normal        | Fuzzy file search                                                          |
| `<Leader>h`       | Normal        | Fuzzy file search including hidden files                                   |
| `<Leader>g`       | Normal        | Fuzzy string search                                                        |
| `<Leader>eo`      | Normal        | Open nvim-tree                                                             |
| `<Leader>ew`      | Normal        | Close nvim-tree                                                            |
| `<Leader>d`       | Normal        | Go to dashboard                                                            |
| `<Leader>s`       | Normal/Visual | Surround selection with delimeter                                          |
| `<Leader>ss`      | Normal        | Surround line with delimeter                                               |
| `ds`              | Normal        | Delete delimeter                                                           |
| `cs`              | Normal        | Change delimeter                                                           |
| `<C-Up>`          | Normal/Visual | Add cursor above main cursor                                               |
| `<C-Down>`        | Normal/Visual | Add cursor below main cursor                                               |
| `<C-S-Up>`        | Normal/Visual | Skip cursor above main cursor                                              |
| `<C-S-Down>`      | Normal/Visual | Skip cursor below main cursor                                              |
| `<C-Right>`       | Normal/Visual | Move to next cursor                                                        |
| `<C-Left>`        | Normal/Visual | Move to previous cursor                                                    |
| `<C-Leftmouse>`   | Normal        | Toggle cursor with mouse left click                                        |
| `<Leader>mn`      | Normal/Visual | Add cursor to the next string that matches the selection                   |
| `<Leader>mN`      | Normal/Visual | Add cursor to the previous string that matches the selection               |
| `<Leader>ms`      | Normal/Visual | Skip cursor to the next string that matches the selection                  |
| `<Leader>mS`      | Normal/Visual | Skip cursor to the previous string that matches the selection              |
| `<Leader>x`       | Normal/Visual | Remove selected cursor                                                     |
| `<Leader>mr`      | Normal        | Restore cursors                                                            |
| `<Leader>a`       | Normal        | Align cursors columns                                                      |
| `S`               | Visual        | Split selection by identifier                                              |
| `<Leader>c`       | Visual        | Add cursor to each line of the selection in the same column as main cursor |
| `<Leader>i`       | Visual        | Add cursor to each line of selection and go into insert mode               |
| `<Leader>a`       | Visual        | Add cursor to each line of selection and go into add mode                  |
| `<Leader>t`       | Visual        | Rotate contents of the lines of the selection                              |
| `<Leader>T`       | Visual        | Rotate contents of the lines of the selection in opposite direction        |
