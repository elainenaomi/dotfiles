# @elainenaomi .dotfiles

macOS and developer environment preferences

## Installation

On terminal, install [homebrew](https://brew.sh/):
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install git:
```
brew install git
```

Install dotfiles:
```
git clone https://github.com/elainenaomi/dotfiles.git ~/dev/elainenaomi/dotfiles
ln -s ~/dev/elainenaomi/dotfiles ~/.dotfiles
~/.dotfiles/install.sh
```

### Example of commands from asdf

```
asdf list-all elixir

asdf install erlang 22.0.4
asdf install elixir 1.8.2

asdf global erlang 22.0.4
asdf global elixir 1.8.2

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
asdf install erlang <version>
```

If the .tool-versions are defined, just run:
`asdf install`

### Sublime Configure

`Install Package Control`

`Install Local Dependencies`

### iTerm2

Preferences > Preferences > Mark load preferences > choose the dotfiles/apps/iterm2
Mark save changes

https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x


### iTermocil
```
# Create your layout directory
$ mkdir ~/.itermocil

# Edit ~/.itermocil/sample.yml (look for sample layouts in this very `README.md`)
# There are also a variety of example files in 'test_layouts' directory in this repo
$ itermocil --edit sample

# Run your newly-created sample layout
$ itermocil sample
```

### Github

git config --global core.excludesfile ~/.dotfiles/apps/git/.gitignore
Ref: https://twitter.com/CaiqueMitsuoka/status/1000068281267572743

### VSCode

Install the Settings Sync extension
Login via Github
Press CMD + Option + D to sync (or search for Sync: Download)

### Zsh

OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
~/.zshrc

ln -s ~/.dotfiles/apps/.zshrc ~/.zshrc

ln -s ~/.dotfiles/apps/elainenaomi.zsh-theme ~/.oh-my-zsh/themes/


## Troubleshooting

“Visual Studio Code” can’t be opened because Apple cannot check it for malicious software.
Go to Security and select Open anyway


"gyp: No Xcode or CLT version detected!" =>


## Github Auth

https://help.github.com/en/enterprise/2.17/user/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent


Turn off:
Keyboard > Text > Touch bar typing suggestions

TODO:
Export iterm2 config
Postgresql too many connections


Warning: Failed to set locale category LC_NUMERIC to en_BR.
Warning: Failed to set locale category LC_TIME to en_BR.
Warning: Failed to set locale category LC_COLLATE to en_BR.
Warning: Failed to set locale category LC_MONETARY to en_BR.
Warning: Failed to set locale category LC_MESSAGES to en_BR.

Copying files to profile
/Users/elainenaomi/.bash_profile: line 53: /Users/elainenaomi/.asdf/asdf.sh: No such file or directory
/Users/elainenaomi/.bash_profile: line 55: /Users/elainenaomi/.asdf/completions/asdf.bash: No such file or directory



xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance

sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
npm install -g node-gyp
era pra usar o yarn

---

gyp: No Xcode or CLT version detected!
gyp ERR! configure error
gyp ERR! stack Error: `gyp` failed with exit code: 1
gyp ERR! stack     at ChildProcess.onCpExit (/Users/elainenaomi/.asdf/installs/nodejs/10.13.0/lib/node_modules/npm/node_modules/node-gyp/lib/configure.js:345:16)
gyp ERR! stack     at ChildProcess.emit (events.js:182:13)
gyp ERR! stack     at Process.ChildProcess._handle.onexit (internal/child_process.js:240:12)
gyp ERR! System Darwin 19.3.0
gyp ERR! command "/Users/elainenaomi/.asdf/installs/nodejs/10.13.0/bin/node" "/Users/elainenaomi/.asdf/installs/nodejs/10.13.0/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js" "rebuild"
gyp ERR! cwd /Users/elainenaomi/dev/therealreal/website/assets/node_modules/fsevents
gyp ERR! node -v v10.13.0
gyp ERR! node-gyp -v v3.8.0
