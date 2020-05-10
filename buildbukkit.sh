echo Please enter the version number you want to
echo download a server for.
echo eg. 1.8, 1.15.2
echo type latest for latest version
read vernum
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar -Xmx1G BuildTools.jar --compile craftbukkit --rev $vernum
echo Step 2
echo Please enter the name of the bukkit.jar file
echo Example: bukkit-1.15.2.jar
echo If you do not know. Use spigot-latest minecraft version number.jar
echo MUST INCLUDE EXTENSION!
read varname
cp $varname spigot.jar
rm $varname
chmod +x start.sh
rm README.md
echo Done.
