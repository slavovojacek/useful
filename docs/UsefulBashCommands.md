# Useful Bash Commands

# pow
sudo pow --install-system
pow --install-local
sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
mkdir -p ~/Library/Application\ Support/Pow/Hosts
ln -s ~/Library/Application\ Support/Pow/Hosts/ ~/.pow

# Divshot
divshot login
divshot push development
divshot push staging
divshot promote staging production
divshot domains:add www.example.com

# Heroku
git remote add {ENV|staging,production,..} {APP_GIT_URL}
heroku config:add BUILDPACK_URL=https://github.com/heroku/heroku-buildpack-php --app {APP_NAME}

# Mongo
brew install mongodb # Does not seem to work properly with --with-openssl
brew cask install --appdir="~/Applications" mongodb # The App

mongorestore {DUMP}
mongod --dbpath {PATH_TO_DB}

# ifstat
nano ~/stats && ifstat -z -t -T -n >> ~/stats

# git-lfs
git lfs track "*.psd"

# imagemagick
# for more info see http://stackoverflow.com/questions/27267073/imagemagick-lossless-max-compression-for-png/27269509#27269509
mogrify -path smaller -resize 60x60% -quality 80 -format jpg *.png

# safe remove on Linux
shred -n 96 -z -u topsecret.txt

# safe remove on MacOS
srm -m -z -v topsecret.txt

# tar and zip
tar -v -cf archive.tar files/file1 files/file2
tar -v -cf archive.tar files/

tar -v -xf archive.tar

zip -v -e pwd.zip pwds/pwd.txt
zip -v -er pwd.zip pwds/

unzip pwd.zip

# aws
aws configure
# see http://docs.aws.amazon.com/general/latest/gr/rande.html for regions
# see https://aws.amazon.com/cli/ for documentation

# ASP.NET 5
brew tap aspnet/dnx
brew update
brew install dnvm

echo >> "source dnvm.sh" ~/.bash_profile

dnvm upgrade

sudo npm install -g yo gulp
sudo npm install -g generator-aspnet

# run {command} every 60 seconds
watch -n 60 'cmd'

# gets number of lines
wc -l file.ext

# splits file into chunks after every 1000 lines
split -l 1000 file.ext new
# more info re file splitting @ http://askubuntu.com/questions/54579/how-to-split-larger-files-into-smaller-parts

EOM.
