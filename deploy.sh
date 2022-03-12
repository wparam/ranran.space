#!/usr/bin/env bash
# zip -rq --symlinks cbn_ui.zip . -x '*.git*' -x './node_modules/*' -x './.next/*'
rm ./yr_ui.zip 

zip -rq --symlinks yr_ui.zip . -x '*.git*' -x './node_modules/*' -x './.next/*'

ssh-add ~/.ssh/newkey.cer

scp ./yr_ui.zip root@47.100.233.102:/root/deploy

ssh root@47.100.233.102 'rm -rf /root/ui; unzip -o /root/deploy/yr_ui.zip -d /root/ui/; cd /root/ui; sh build.sh'
