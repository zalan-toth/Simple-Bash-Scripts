read -p "Enter your full name: " full_name
read -p "Enter your date of birth (DD/MM/YYYY): " dob
read -p "Enter your username: " username
read -s -p "Enter your password: " password
echo
read -p "Enter your email address: " email

if grep -q "^$username:" Register.txt; then
  echo "Username already exists."
  echo "Registration failed."
else
  echo "<USR-$username><PWD-$password><$full_name><$dob><$email>" >> Register.txt
  echo "Registration successful."
fi

