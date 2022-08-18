# .bashrc.d
An attempt to organize my .bashrc

## Installation
```bash
# Clone repo
git clone git@github.com:tomsoir/bash.git ~/.bashrc.d
# Link dot-bashrc to .bashrc file (running on every login)
ln -s ~/.bashrc.d/dot-bashrc ~/.bashrc
# Execute .bashrc to apply changes immediately
source ~/.bashrc
```

## Adding stuff
Create a new file with a filename in the format of `<order in which this will be run>.<brief description>.sh` in the `modules` directory.

That's it!
