#!/bin/bash

# Check if xdotool is installed
if ! [ -x "$(command -v xdotool)" ]; then
  echo 'Error: xdotool is not installed. Trying to install: ' >&2
  sudo apt-get install xdotool
fi


# Check if Terminator is installed
if ! [ -x "$(command -v terminator)" ]; then
  echo 'Error: Terminator is not installed. Please install it first.' >&2
  exit 1
fi

# Open Terminator
terminator &

# Wait for Terminator to start
sleep 1

# Press key stroks
xdotool key Super_L+Up
sleep 1

xdotool key Ctrl+Shift+e

# Type commands
xdotool type "cd ~/your_repo_name/training_app_compose"
xdotool key Return

xdotool type "docker compose start"
xdotool key Return

xdotool key Ctrl+Shift+Tab

xdotool type "docker exec -it your_container_name /bin/bash"
xdotool key Return
xdotool type "cd ~/your_repo_name/backend"
xdotool key Return
xdotool type "clear"
xdotool key Return
xdotool type "python3 ~/your_repo_name/backend/app.py"
xdotool key Return

xdotool key Ctrl+Shift+o

xdotool type "docker exec -it your_container_name /bin/bash"
xdotool key Return
xdotool type "cd ~/your_repo_name/backend"
xdotool key Return
xdotool type "clear"
xdotool key Return
xdotool type "python3 ~/your_repo_name/backend/socketio_server.py"
xdotool key Return

xdotool key Ctrl+Shift+o

xdotool type "docker exec -it your_container_name /bin/bash"
xdotool key Return
xdotool type "cd ~/your_repo_name/backend"
xdotool key Return
xdotool type "clear"
xdotool key Return
xdotool type "python3 ~/your_repo_name/backend/file_server.py"
xdotool key Return

xdotool key Ctrl+Shift+o

xdotool type "docker exec -it your_container_name /bin/bash"
xdotool key Return
xdotool type "cd ~/your_repo_name/frontend"
xdotool key Return
xdotool type "npm start"
xdotool key Return

sleep 3
firefox http://localhost:3000/

code ~/your_repo_name
sleep 1
xdotool key Super_L+Up