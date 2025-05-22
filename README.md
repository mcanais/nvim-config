# Introduction

This is my neovim configuration. The plugin management is done by LazyVim.

# Custom Shortcuts

Shortcuts for plugin functionality and general use.
`<Leader>` is set to Space.

| Shortcut           | Mode          | Description                                                                |
|--------------------|---------------|----------------------------------------------------------------------------|
| `<C-Bs>`           | Insert        | Delete word backwards                                                      |
| `<Leader>Esc`      | Insert        | Remove highlight selection                                                 |
| `ç`                | Normal/Visual/Options | Move to end                                                        |
| `<Leader>p`        | Normal        | Move to previous buffer                                                    |
| `º`                | Normal        | Find                                                                       |
| `<Leader>ff`       | Normal        | Fuzzy file search                                                          |
| `<Leader>fe`       | Normal        | Fuzzy string search                                                        |
| `<Leader>fg`       | Normal        | Show git status                                                            |
| `<Leader>fb`       | Normal        | Fuzzy buffer search                                                        |
| `<Leader>fc`       | Normal        | Fuzzy colorscheme search                                                   |
| `<Leader>fo`       | Normal        | Fuzzy todo marks search                                                    |
| `<Leader>eo`       | Normal        | Open nvim-tree                                                             |
| `<Leader>ew`       | Normal        | Close nvim-tree                                                            |
| `<Leader>d`        | Normal        | Go to dashboard                                                            |
| `<Leader>s`        | Normal/Visual | Surround selection with delimeter                                          |
| `<Leader>ss`       | Normal        | Surround line with delimeter                                               |
| `ds`               | Normal        | Delete delimeter                                                           |
| `cs`               | Normal        | Change delimeter                                                           |
| `<C-Up>`           | Normal/Visual | Add cursor above main cursor                                               |
| `<C-Down>`         | Normal/Visual | Add cursor below main cursor                                               |
| `<C-S-Up>`         | Normal/Visual | Skip cursor above main cursor                                              |
| `<C-S-Down>`       | Normal/Visual | Skip cursor below main cursor                                              |
| `<C-Right>`        | Normal/Visual | Move to next cursor                                                        |
| `<C-Left>`         | Normal/Visual | Move to previous cursor                                                    |
| `<C-Leftmouse>`    | Normal        | Toggle cursor with mouse left click                                        |
| `<Leader>mn`       | Normal/Visual | Add cursor to the next string that matches the selection                   |
| `<Leader>mN`       | Normal/Visual | Add cursor to the previous string that matches the selection               |
| `<Leader>ms`       | Normal/Visual | Skip cursor to the next string that matches the selection                  |
| `<Leader>mS`       | Normal/Visual | Skip cursor to the previous string that matches the selection              |
| `<Leader>ma`       | Normal/Visual | Add a cursor to all matches of the selection in the file                   |
| `m`                | Visual        | Add a cursor to all matches of given string in the selection               |
| `<Leader>mx`       | Normal/Visual | Remove selected cursor                                                     |
| `<Leader>mr`       | Normal        | Restore cursors                                                            |
| `<Leader>t`        | Visual        | Rotate contents of the lines of the selection                              |
| `<Leader>T`        | Visual        | Rotate contents of the lines of the selection in opposite direction        |
| `<Leader>a`        | Normal        | Align cursors columns                                                      |
| `S`                | Visual        | Split selection by identifier                                              |
| `<Leader>a`        | Visual        | Add cursor to each line of selection and go into add mode                  |
| `<Leader>i`        | Visual        | Add cursor to each line of selection and go into insert mode               |
| `<A-Up>`           | Normal        | Move line up                                                               |
| `<A-Down>`         | Normal        | Move line down                                                             |
| `<A-Up>`           | Visual        | Move selection up                                                          |
| `<A-Down>`         | Visual        | Move selection down                                                        |
| `<A-Right>`        | Visual        | Move selection to the right                                                |
| `<A-Left>`         | Visual        | Move selection to the left                                                 |
| `<Leader><Right>`  | Normal        | Move to window on the right                                                |
| `<Leader><Left>`   | Normal        | Move to window on the left                                                 |
| `<Leader><Up>`     | Normal        | Move to window above                                                       |
| `<Leader><Down>`   | Normal        | Move to window below                                                       |
