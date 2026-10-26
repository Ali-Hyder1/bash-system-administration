#!/bin/bash
function projet {
    echo -e "\n\n\n========================================"
    echo "=         Administration Menu          ="
    echo -e "========================================\n"
    echo "1. System Information"
    echo "2. Disk Usage"
    echo "3. Ram Usage"
    echo "4. Create a Directory"
    echo "5. Exit"
    read -p "Enter your choice: " choice
}
while true
do 
    projet
    if [ "$choice" == "1" ]; then
        echo -e "\n\n=====System Information=====\n\n"
        echo "Hostname: $HOSTNAME"
        echo "User ID: $UID"
        sleep 2s
    elif [ "$choice" == "2" ]; then
        echo -e "\n\n=====Disk Usage=====\n\n"
        df -h
        sleep 2s
    elif [ "$choice" == "3" ]; then
        echo -e "\n\n=====Ram Usage=====\n\n"
        free -h
        sleep 2s
    elif [ "$choice" == "4" ]; then
        echo ""
        read -p "Enter directory name: " dir_name
        if mkdir "$dir_name"; then
            echo "Directory created successfully!"
        else
            echo "Directory creation failed!"
        fi
        sleep 2s
    elif [ "$choice" == "5" ]; then
        echo -e "\n\nExiting..."
        sleep 1s
        break
    else
        echo -e "\n\nInvalid choice. Please try again."
        sleep 2s
    fi
done