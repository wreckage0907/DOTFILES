#!/bin/bash

# Get Bluetooth status
bluetooth_status=$(bluetoothctl show | grep Powered | awk '{print $2}')

if [ "$bluetooth_status" == "yes" ]; then
  # Get list of paired devices
  paired_devices=$(bluetoothctl paired-devices | grep Device | awk '{print $3}')

  # Check if any device is connected
  for device in $paired_devices; do
    device_info=$(bluetoothctl info "$device")
    if echo "$device_info" | grep -q "Connected: yes"; then
      echo " Connected"
      exit 0
    fi
  done

  # If no device is connected
  echo " Paired"
else
  echo " off"
fi

