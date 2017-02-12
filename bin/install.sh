#!/bin/sh

# Copy the basic settings.
mkdir -p ~/.vim/bundle
cp -Rf ./src/* ~/

# Scan configuration of the vim, and find all plugins that must be installed
# through vundle.
PLUGINS=`cat ~/.vimrc | grep "Plugin '*'" | cut -d"'" -f2`
for plugin in $PLUGINS
do
    name=`echo $plugin | cut -d"/" -f2`
    echo "Processed: $name"
    git clone https://github.com/${plugin} ~/.vim/bundle/$name
done

# Upgrade.
sh ~/.vim/bin/upgrade.sh

echo "Done!"

exit 0

