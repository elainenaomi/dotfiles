#!/usr/bin/env bash
# From: https://github.com/kassio/dotfiles

echo '>>> Stop postgres'
brew services stop postgresql &>/dev/null
echo '>>> Remove all postgres data'
rm -rf /usr/local/var/postgres &>/dev/null
echo '>>> Init DB'
initdb --auth=trust -U postgres /usr/local/var/postgres
echo '>>> Restart postgres'
brew services start postgresql &>/dev/null
sleep 1;
echo ">>> Create postgres user ${USER}"
createuser --no-createdb --superuser --login --username=postgres ${USER}

