#!/bin/bash

while true
do
    clear
    echo "==============================="
    echo "   Linux System Monitor"
    echo "==============================="
    echo "1. CPU Usage"
    echo "2. Memory Usage"
    echo "3. Disk Usage"
    echo "4. Logged In Users"
    echo "5. Network Information"
    echo "6. System Uptime"
    echo "7. Running Processes"
    echo "8. Exit"
    echo "==============================="
    echo -n "Enter your choice: "
    read choice

    case $choice in

        1)
            echo
            echo "CPU Usage:"
            top -bn1 | grep "Cpu"
            ;;

        2)
            echo
            echo "Memory Usage:"
            free -h
            ;;

        3)
            echo
            echo "Disk Usage:"
            df -h
            ;;

        4)
            echo
            echo "Logged In Users:"
            who
            ;;

        5)
            echo
            echo "Network Information:"
            ip a
            ;;

        6)
            echo
            echo "System Uptime:"
            uptime
            ;;

        7)
            echo
            echo "Top Running Processes:"
            ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
            ;;

        8)
            echo
            echo "Exiting..."
            exit
            ;;

        *)
            echo
            echo "Invalid Choice!"
            ;;
    esac

    echo
    echo "Press Enter to continue..."
    read
done