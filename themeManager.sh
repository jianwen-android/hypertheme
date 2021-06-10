#!/bin/bash

#!/bin/bash
file="testFile"
while IFS= read -r line
do
        # display $line or do somthing with $line
    gsed '/(  plugins: \[)/a $line' /home/jianw/.hyper.js
    sed 's/(  plugins: \[)/"$line"/' /home/jianw/.hyper.js
    
    break
done <"$file"