# Scripts

This is a collection of my regularly used scripts.


## Getting Started

Simply clone the repo and add it to the `$PATH`.

```bash
test -d ~/.scripts || git clone https://github.com/Animeshz/scripts ~/.scripts

nvim {.bashrc,.zshrc,.config/fish/config.fish}
# add $HOME/.scripts to $PATH
```


## Scripts Description

`for file in *; do if [[ $(./perms $file | head -c 1) == 7 ]]; then printf "\033[36m%-30s\033[0m %s\n" "$file" "$(cat $file | grep '^#[^!]' | head -n 1 | cut -f 2- -d " ")"; fi; done`

```
active-window-pid              Finds pid of currently focused window using EWMH
cloc-git                       Counts lines of code in a git repository
extarrange                     Arranges the files by grouping them into folder of their extension name
git-tree                       Prints out tree of yadm/git tracked files
perms                          Prints out permissions of the given files in octal format
pwd-launch                     Finds and appends pwd of currently focused window using EWMH to the given command
reboot-firmware                Reboots into BIOS/UEFI firmware setup
rec                            Records screen using ffmpeg (saves file with name if provided)
styler                         Styles the text to different styles (like superscript), run with --help to know more
```


## LICENSE

Licensed under the MIT License - see the [LICENSE.md](https://github.com/Animeshz/scripts/blob/main/LICENSE) file for more details.

Some scripts are taken from others, they are preserved with links to their original sources (if any).
