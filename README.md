# @elainenaomi .dotfiles

macOS and developer environment preferences

## Installation

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
