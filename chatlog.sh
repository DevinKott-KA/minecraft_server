#!/bin/bash
cat /home/mark/mcserver/logs/latest.log | egrep '\[Server thread/INFO\]: <'\|' left the game'\|'joined the game'\|'\[Server thread/INFO\]:.\[Server\]' | sed -E 's/\[Server thread\/INFO\]: //' |  sed -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b://g' > /home/mark/website/chat_temp.txt

echo "Chat Log Refreshed at `date`" >> /home/mark/website/chat_temp.txt

tac /home/mark/website/chat_temp.txt > /home/mark/website/chat.txt
cat /home/mark/website/chat.txt

