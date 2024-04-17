#!/bin/bash

# Define paths to your Django backend and React frontend directories
DJANGO_DIR="backend"
REACT_DIR="frontend"

# Function to start Django backend server
start_django() {
    echo "Starting Django backend server..."
    cd "$DJANGO_DIR" || exit
    poetry run python manage.py runserver
}

# Function to start React frontend server
start_react() {
    echo "Starting React frontend server..."
    cd "$REACT_DIR" || exit
    npm run dev
}

# Start Django backend server in the background
start_django &

# Start React frontend server in the background
start_react &

echo "Servers started."
