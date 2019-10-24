# `jakeswenson`'s dotfiles

[chezmoi]: https://github.com/twpayne/chezmoi
[vundle]: https://github.com/VundleVim/Vundle.vim
[vimr]: http://vimr.org/
[mas]: https://github.com/mas-cli/mas

## Layout
This is my public dotfiles managed by [chezmoi].

### Customizations

#### Chezmoi
[.chezmoi.toml.tmpl](.chezmoi.toml.tmpl) - this file is the [chezmoi config file](https://github.com/twpayne/chezmoi/blob/master/docs/REFERENCE.md#configuration-file)
[.chezmoiignore](.chezmoiignore) - [chezmoiignore](https://github.com/twpayne/chezmoi/blob/master/docs/REFERENCE.md#chezmoiignore) for this repo

#### Shell Init Files
[dot_bashrc](dot_bashrc) - `~/.bashrc` - bash init file that sets up a basic bash environment

[dot_inputrc](dot_inputrc) - `~/.inputrc`  

[dot_zshrc](dot_zshrc) - `~/.zshrc` - zsh init file configuring quite a few things:
  - [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh) for a sweet-ass zsh shell
  - my custom shell init functions [`~/.config/shell/*`]

#### `~/code/`
A place for all my code, with a directory pre-configured for work (`gd`)

#### `~/.cargo/`
Stuff related to [rust](https://www.rust-lang.org/)
 
#### `~/.config/`
[`~/.config/shell/env`]: dot_config/exact_shell/env 
[`~/.config/machine/*`]: dot_config/exact_machine/

##### [`~/.config/machine/*`]
- [`brew/cask-packages`](dot_config/exact_machine/brew/cask-packages.tmpl) - `brew cask` package's to install  
- [`brew/packages`](dot_config/exact_machine/brew/packages) - `brew` packages's to install
- [`brew/taps`](dot_config/exact_machine/brew/taps) - `brew` taps to tap
- [`cargo/apps`](dot_config/exact_machine/cargo/apps) - [rust] `cargo` apps to build and install
- [`mas/apps`](dot_config/exact_machine/mas/apps) - mac app store applications to install with [mas]
- [`vscode/extensions`](dot_config/exact_machine/vscode/extensions) - vs-code extensions to install

> Note [`install-apps`](dot_local/exact_bin/executable_install-apps) installs all of the above

#### `~/.local/`
A directory for a few things:
- by default [chezmoi] will install into `~/.local/share/chezmoi/`
- a `.local/bin/` directory for some important scripts

##### `~/.local/bin/`
- [`~/.local/bin/editor-cmd`](dot_local/exact_bin/executable_editor-cmd) - my `EDITOR` command, configured in [`~/.config/shell/env`]
- [`~/.local/bin/setup_vundle`](dot_local/exact_bin/executable_setup_vundle) - sets up [vundle] for vim
- [`~/.local/bin/install-apps`](dot_local/exact_bin/executable_install-apps) - installs applications configured in [`~/.config/machine/*`] 
- [`~/.local/bin/setup_machine`](dot_local/exact_bin/executable_setup_machine) - configures some mac defaults like key repeat
- [`~/.local/bin/vimr`](dot_local/exact_bin/executable_vimr) - cli launcher for [vimr]

> This directory is on the path so you can just type the command/script name.

## Setup

```bash
echo "
=======================
    INSTALL chezmoi
======================="

brew install twpayne/taps/chezmoi

chezmoi init --apply --verbose git@github.com:jakeswenson/public-dotfiles.git
```
