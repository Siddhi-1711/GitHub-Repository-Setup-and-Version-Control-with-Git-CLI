#!/bin/bash

# Simple Interest claculator

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest = $interest"
}

# Input: Principal, Rate, Time
read -p "Enter Principal Amount: " principal
read -p "Enter Annual Rate of Interest (in %): " rate
read -p "Enter Time Period (in years): " time

# Validate input
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "All inputs are required. Please enter valid values."
    exit 1
fi

# Calculate and display simple interest
calculate_simple_interest "$principal" "$rate" "$time"
