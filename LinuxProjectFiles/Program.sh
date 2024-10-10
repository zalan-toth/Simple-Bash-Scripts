
echo "Logged in!"
echo

while true; do
  echo ""
  echo "You are currently logged in. Choose option from below:"
  echo "1. Logout"

  read -p "Enter your choice: " choice

  case "$choice" in
    1)
      echo "Logging out."
      exit 0
      ;;
    *)
      echo "Invalid option, please try again."
      ;;
  esac
done
exit 0


