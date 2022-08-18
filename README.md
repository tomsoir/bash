# .bashrc.d
An attempt to organize my .bashrc

## Installation
```bash
# Clone repo
git clone git@github.com:tomsoir/bash.git ~/.bashrc.d

# Link dot-bashrc as .bashrc file (running on every login session)
# ln -s ~/.bashrc.d/dot-bashrc ~/.bashrc

# Link dot-bashrc as .bash_profile file (running on every terminal)
ln -s ~/.bashrc.d/dot-bashrc ~/.bash_profile

# Execute .bashrc to apply changes immediately
source ~/.bash_profile
```

## Adding stuff
Create a new file with a filename in the format of `<order in which this will be run>.<brief description>.sh` in the `modules` directory.

That's it!
