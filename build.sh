rm -rf distribute
git clone https://github.com/ootaken/distribute.git
cd distribute/
rake ${BRANCH}
cd target/
ls | grep x64 | xargs tar -zxvf
cd `ls | grep x64 | grep -v tar`
sh installer.sh /usr/local/aipo
/usr/local/aipo/bin/startup.sh
