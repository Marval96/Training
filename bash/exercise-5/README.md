# Bash: Exercise 5

Execute consecutive runs of a script.

## Preparation

Find the script "my\_sleep.sh" in this directory and try to guess what it does.
Make it executable.

## Task

Write a bash script named "run\_epoch.sh":
   - The script gets an input variable with an integer value
   - The script runs "my\_sleep.sh" as many times as indicated by the input integer value.
   - Each run is triggered when the previous run was finished.
   - Each run writes a new log file name 'run\_ii.log' where 'ii' is the number of the iteration, with the time it was started and the time it finished.
   - The script prints out (output) every iteration the index number of the run triggered and the time.
   - The script prints out a final line saying: "End at" followed by the time "run\_epoch.sh" finished.

To check that your script works, open a new terminal and run 'run\_epoch.sh' this way:

```bash
nohup ./run_epoch 6 > run_epoch.log &
```

While './run\_epoch' is running you can see how new files appear:
```bash
run_1.log
run_2.log
...
```

They must contain the time they started and the time they finished.

Whenever the script './run\_epoch' has finished, check the file 'run\_epoch.log'.
You will find there when each i-th run was started and when script finished.

## Tip
What about using a variable storing the time? Try the following in a terminal:

```bash
now=$(date)
```

```bash
echo $now
```
