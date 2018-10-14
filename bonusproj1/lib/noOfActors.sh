#!/bin/bash
while read line
do
    name=$noOfActors
    time elixir finalCode.ex "$noOfActors" >> output.txt 
done < $1