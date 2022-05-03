# Scripts

This is a collection of my regularly used scripts.


## Getting Started

Simply clone the repo and add its subdirs to the `$PATH`.

```bash
test -d ~/.scripts || git clone https://github.com/Animeshz/scripts ~/.scripts

nvim {.bashrc,.zshrc,.config/fish/config.fish}
# add `fd -td -d1 . ~/.scripts 2>/dev/null || find ~/.scripts -type d -maxdepth 1` to $PATH
```


## Scripts Description

[show-scripts](https://github.com/Animeshz/scripts/blob/main/show-scripts)

```
acpi                           Scripts for handling acpi events from /etc/acpi/handler.sh
├─ bridn                          Down the brightness by given value or else 2
├─ briup                          Up the brightness by given value or else 2
├─ munxt                          Emits a generic event to move to next song/video using playerctl
├─ muprv                          Emits a generic event to move to next song/video using playerctl
├─ mute                           Toggle mute
├─ mutoggle                       Emits a generic event to move to next song/video using playerctl
├─ slp                            Puts laptop into s2idle(1h), deep-sleep(2h), and into hibernation if still no activity
├─ voldn                          Up the vol by given value or else 2
└─ volup                          Down the vol by given value or else 2

bootstrapping                  Bootstrapping Scripts
├─ crusersv                       Creates user sv dir in ~/.local/service (preferably symlinking user services from ~/.config/sv)
├─ gen-monitor-dpi                Generates correct dpi for the screen, outputs in format of /etc/X11/xorg.conf.d
└─ rpi-repeater                   Setup raspberry pi as a wifi-repeater (Ext-Dongle: client, Inbuilt: AP)

main                           The Main (Actual) scripts for productivity
├─ active-window-pid              Finds pid of currently focused window using EWMH
├─ cross-chroot                   A simple script to automate installation of dependencies and enable cross-chroot environment
├─ extarrange                     Arranges the files by grouping them into folder of their extension name
├─ git-tree                       Prints out tree of yadm/git tracked files
├─ pwd-launch                     Finds and appends pwd of currently focused window using EWMH to the given command
├─ reboot-firmware                Reboots into BIOS/UEFI firmware setup
├─ rti-download                   QuickMulti RTI Downloader
└─ styler                         Styles the text to different styles (like superscript), run with --help to know more

snips                          Snippets that mainly delegates the operation to other applicaitons/scripts in one-line, but used regularly.
├─ color                          TODO: Extend script as filter, and with string name inputs like 'blue'
├─ dirdiff                        Shows file only in first dir and not in other
├─ git-cloc                       Counts lines of code in a git repository
├─ installed-packages             Shows list of manually installed packages sorted by name (default) or date (-d) of installation
├─ ocr                            Copies the text from anywhere on the screen to clipboard using tesseract-ocr
├─ perms                          Prints out permissions of the given files in octal format
├─ rec                            Records screen using ffmpeg (saves file with name if provided)
├─ recon                          Reconfigures xbps packages if isn't atm
├─ syncfiles                      Just copies the absolute path to the ~/.config/yadm/files
├─ vml                            Launch quickemu vm with fuzzy search
└─ xc                             Runs xtools/xchroot with some predefined stuffs
```


## LICENSE

Licensed under the MIT License - see the [LICENSE.md](https://github.com/Animeshz/scripts/blob/main/LICENSE) file for more details.

Some scripts are taken from others, they are preserved with links to their original sources (if any).
