# Divshot
divshot login
divshot push development
divshot push staging
divshot promote staging production
divshot domains:add www.example.com

# Heroku
heroku git:remote -a app-name
git remote add staging staging-app-git-url

# Mongo
brew install mongodb # Does not seem to work properly with --with-openssl
brew cask install --appdir="~/Applications" mongodb # The App

mongorestore {DUMP}
mongod --dbpath {PATH_TO_DB}

# ifstat
nano ~/stats && ifstat -z -t -T -n >> ~/stats
