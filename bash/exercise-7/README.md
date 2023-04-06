# Bash: Exercise 6

Your own "locate" command.

With the command "man" or the flag "--help" chech what is the command "locate" for:

```bash
man locate
```

or

```
locate --help
```

The command "locate" finds files, and returns their paths, in your machine. But... looking for a
file in every directory of your machine is not always very efficient. In my case, my files are in two
directories: your directory ("/home/diego" in my case) and a remote NFS volume mounted in
"/Ixtlilton/home" (my "/home/diego" in our cluster named "Ixtlilton"). Woldn't be useful having our
own "my\_locate" command to look for files only in certain directories -not in all files tree of
your OS-?

## Preparation

You need to make "bash/exercise-6" before this one.

## Task 1

Write in your directory "my\_bin" two scripts: "mylocate" and "myupdatedb".

### myupdatedb

This script stores in a gzip compressed text file the list of files found in all directories of your interest:
   - Print out with echo the following message "Updating database..."
   - With the commands "find" and "gzip" store in the file "$HOME/.milocate.gz" the absolute paths
     of all files and directories found in all directories of your interest.
   - Print out the message "Done"

Now, execute this script and check the size of "$HOME/.milocate.gz".

### milocate

This script looks for a string in the compressed list of absolute paths in "$HOME/.milocate.gz":
   - This script requires a single input argument via command line: the string to be found in the
     list of absolute paths.
   - With the help of the command "zgrep" print out every absolute path where the given string is
     present,

We can already run our own searches. If "milocate" is in "my\_bin" and "my\_bin" is in your PATH
environment variable, you can run from your terminal -at any point- queries like the following:

```bash
mylocate lorem
```

... and you have at least a file with "lorem" in its name ("lorem.py" in exercise-6).


## Task 3

Would you be able to update the content of your ".milocate.gz" every day at 3 am with the command
"cron"?

## Task 4

Would you be able now to design your own incremental compressed backups strategy -including directories in
remote machines- with the commands "cron" and "rcsync"?
