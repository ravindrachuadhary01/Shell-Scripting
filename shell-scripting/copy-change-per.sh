!#/bin/bash
# This script copies the main.py file and changes the print statement.
cp main.py main_copy.py
sed -i 's/Hello, World!/Hello, Automation!/' main_copy.py
echo "File copied and modified successfully."
