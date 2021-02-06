# DotFiles


## SYMLINK example using .gitconf

$ cd dotfiles/ 
#### Be sure to adjust the user to your user, which you can find in the path or by running the following:

$ echo $USER
(Your User)

$ pwd
/Users/(Your User)/(Parent folder of dotfiles)/dotfiles

# Be sure to use an absolute path
$ ln -nfs /Users/(YourUser)/(Paremt folder of dotfiles)/.gitconfig /User/(Your User)/.gitconfig

- "-s" creates a symbolic link instead of a hard link
- "-f" continues with other symlinking when an error occurs
- "-n" avoids symlinking a symlink

