#!/bin/bash

# Para usar este script, necesitas crear un topico en la pagina de ntfy.sh
# Luego introducis ese topico en la variable topic

# In order to use this script, you need to create a topic with the application ntfy.sh
# Then you can introduce this topic into the topic variable

topic=put_your_topic_here

function main(){
    if [ ! -f scan.txt ];then
        touch scan.txt
    fi
    mv scan.txt previous_scan.txt
    sudo nmap -n -sn --max-parallelism 100 "10.10.10.0/24" > scan.txt
    diff previous_scan.txt scan.txt | grep "10.10" > difference.txt
    computers="difference.txt"
    if [ -s ${computers} ];then
        while IFS= read -r computer;do
            iostring="${computer:0:1}"
            if [ "$iostring == \<" ]; then
                curl -d "Nuevo dispositivo: ${computer:23:12}" ntfy.sh/$topic
            fi
        done <$computers
    fi
}

main
