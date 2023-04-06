# Bash: Exercise 6

At the end of this exercise, you wil have your own command "find\_and\_replace" to be used by your
user no matter whats the working dir in your terminal.

Write a script to find and replace a given string ('text pattern') in all files located in the directory where
the script is executed -including those files inside directories found in the same working dir-.

## Preparation

Find the directory "sandbox" and have a look to its content.

Calculate in the file "sandbox/C/lorem.py" the number of "et" words over the total number of words
in the file. You can find some help in the commands "wc", "grep" or "less".

## Task 1

Write a script to find and replace a given string ('text pattern') in all files located in the directory where
the script is executed -including those files inside directories found in the same working dir-.


Let's call the bash script "find\_and\_replace" and write its lines according to the following
indications:
   - The script has to be executed in the terminal.
   - The script takes two arguments via command line: string\_A and string\_B.
   - Using the commands "find" and "sed", the script looks for occurrences of string "string\_A" and
     replace them with the new string "string\_B" 

To check whether your script works or not, make it executable and try it inside the directory
"sandbox":

```bash
./find_and_replace et XXX
```

Did you manage to replace all, and only, words "et" by "XXX" in every file inside "sandbox"?

## Task 2

Now imaging that you want to use this script anywhere at anytime. Do you need to copy the script
each time you need it to the working directory? No... of course not. Let's make a directory in your
home where you can store (and execute) your home-made commands.

```bash
cd
mkdir my_bin
```

Now, let's move your brand new "find\_and\_replace" command to "my\_bin".

```bash
mv Training/bash/exercise-6/sandbox/find_and_replace my_bin/.
```

How can we tell our OS that every script in "my\_bin" needs available for its execution at any time?
Easy!:

```bash
echo $PATH
```

The variable PATH stores all directories where your user finds executables (scripts...
commands...). Let's rewrite the content of this variable to include your "my\_bin" directory.

```bash
export PATH=$HOME/my_bin:${PATH}
```

You can check that your "PATH" variable was modified:

```bash
echo $PATH
```

Now, go back to the "sandbox" directory and run in your terminal:

```
find_and_replace XXX et
```

Voilá... The script was used inside "sandbox" (and "find\_and\_replace" is in other directory).

Finnally, if you open a new terminal... will you be able to use the "find\_and\_replace" command
anywhere? How can we fix it?

