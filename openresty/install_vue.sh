#!/bin/bash

bashpath=`pwd`
cd $bashpath/vueelement
#git config --global url."https://github.com/nhn/raphael.git".insteadOf "ssh://git@github.com/nhn/raphael.git"
#npm install
#npm run dev
#npm run build:stage
npm run build:prod

