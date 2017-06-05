
apt install nodejs emacs python

sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}


npm install -g surge
