#! /bin/sh

cp waka.sh stats.txt egg.pl ..
git reset --hard start
mv ../waka.sh ../stats.txt ../egg.pl .
git tag -d start
git add waka.sh stats.txt egg.pl
git commit -m "Waka waka!"
git tag start
perl ./egg.pl
git push --tags origin master

