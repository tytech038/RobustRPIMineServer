
echo Please enter the version number you want to
echo download a server for.
echo eg. 1.8, 1.15.2
echo type latest for latest version
read vernum
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
curl -o start.sh https://raw.githubusercontent.com/tytech038/RobustUnixMineServer/master/start.sh
java -jar -Xmx1G BuildTools.jar craftbukkit --rev $vernum
echo Step 2
echo Please enter the name of the bukkit.jar file
echo Example: bukkit-1.15.2.jar
echo If you do not know. Use spigot-latest minecraft version number.jar
echo MUST INCLUDE EXTENSION!
read varname
cp $varname bukkit.jar
rm $varname
chmod +x startbukkit.sh
rm README.md
curl -o eula.txt https://raw.githubusercontent.com/tytech038/RobustWinMineServer/master/eula.txt
echo Done.
