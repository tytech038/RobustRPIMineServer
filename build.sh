curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar -Xmx1G BuildTools.jar
cowsay Step 2
echo Please enter the name of the spigot.jar file
echo Example: spigot-1.15.2.jar
echo MUST INCLUDE EXTENSION!
read varname
cp $varname spigot.jar
rm $varname
chmod +x start.sh
rm README.md
echo Done.

