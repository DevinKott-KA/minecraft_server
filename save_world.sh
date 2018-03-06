#/bin/bash

cd /home/mark/mcserver/
pwd
screen -S minecraft -p 0 -X stuff "save-all$(printf \\r)"
sleep 3
screen -S minecraft -p 0 -X stuff "save-off$(printf \\r)"
sleep 3
datevar=`date`
git add .
git commit -am "$datevar Commit"
sleep 3
git push
screen -S minecraft -p 0 -X stuff "save-on$(printf \\r)"
sleep 3
screen -S minecraft -p 0 -X stuff "say $datevar World Backup Complete!$(printf \\r)"
sleep 3
