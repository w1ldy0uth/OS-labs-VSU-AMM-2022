#!/usr/bin/env bash

echo Installing app...

touch app
mv app /usr/bin 
chmod g+x /usr/bin/app

touch app.lib
mv app.lib /usr/lib/shurygin

touch app.conf 
mv app.conf /etc/shurygin
echo /usr/lib/app > app.conf 
echo /usr/lib/shurygin/app/lib

echo Instalation completed
