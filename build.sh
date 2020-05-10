echo Please enter the version number you want to
echo download a server for.
echo eg. 1.8, 1.15.2
read vernum
curl -o start.sh https://raw.githubusercontent.com/tytech038/RobustUnixMineServer/master/start.sh
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar -Xmx1G BuildTools.jar --rev $vernum
echo Step 2
echo Please enter the name of the spigot.jar file
echo Example: spigot-1.15.2.jar
echo If you do not know. Use spigot-(minecraft version number).jar
echo MUST INCLUDE EXTENSION!
read varname
cp $varname spigot.jar
rm $varname
chmod +x start.sh
rm README.md
echo Done.

