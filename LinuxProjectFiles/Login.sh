attempt_counter=0
max_attempts=3

while true; do
read -p "Enter your username: " username
read -s -p "Enter your password: " password
echo
        
if grep -q "^<USR-$username><PWD-$password>" Register.txt; then
  echo "Attempting login."
  ./Program.sh
  exit 0 
else
  echo "Login failed."
  ((attempt_counter++))
  if ((attempt_counter >= max_attempts)); then
      echo "Maximum login attempts reached."
      exit 1 
  fi
fi
done