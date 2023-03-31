#!/bin/bash

#Is it 'my_sleep.sh' active?

if ps -C "my_sleep.sh" > /dev/null; then

    #PID 'my_sleep.sh'
    pid=$(ps -C "my_sleep.sh" -o pid=)

    #Kill the process 
    kill "$pid"
    echo "File 'my_sleep.sh' PID $pid it´s was killed"
else
    echo "File 'my_sleep.sh' still active."
fi