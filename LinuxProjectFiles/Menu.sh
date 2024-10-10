#!/bin/bash
while true; do
  echo ""
  echo "Welcome, please choose one of the following options:"
  echo "1. Register your details"
  echo "2. Login to your account"
  echo "3. Exit"

  read -p "Enter your choice: " choice

  case "$choice" in
    1)
      ./Register.sh
      ;;
    2)
      ./Login.sh
      ;;
    3)
      echo "Exiting program."
      exit 0
      ;;
    *)
      echo "Invalid option, please try again."
      ;;
  esac
done

