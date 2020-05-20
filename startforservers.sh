echo This will run even after you close the prompt/ssh window. Proceed?
echo Exit the SSH window/terminal to stop now.
read -n 1 -s -r -p "Press any key to continue"
screen
java -jar -Xmx2G spigot.jar
