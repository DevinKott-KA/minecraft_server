#!/bin/bash
cat /home/mark/mcserver/logs/latest.log | egrep '\[Server thread/INFO\]: <'\|'logged in with entity id'\|'\[Server thread/INFO\]:.\[Server\]' | sed -E 's/\[Server thread\/INFO\]: //' | tee /home/mark/website/chat.txt
