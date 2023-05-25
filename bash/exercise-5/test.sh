#!/bin/bash

#Input
num_executions=$1

#Number of execution
execution_count=1

#Time
start_time=$(date +%T)

#Run "my_sleep.sh" and make a record
function run_my_sleep() {

    start=$(date +%T)

    ./my_sleep.sh

    end=$(date +%T)

    echo "Ejecución $execution_count: $start - $end" 
    ((execution_count++)) >> run_$execution_count.log

}

#Loop fpr "my_sleep.sh" 
while [ $execution_count -le $num_executions ]
do
    wait

    #Run my_sleep.sh" and make a record
    run_my_sleep

    #Print
    echo "Iteración $execution_count: ejecución desencadenada a las $(date +%T)"
done

#End "run_epoch.sh"
end_time=$(date +%T)

#Print end
echo "Terminar a las $end_time"