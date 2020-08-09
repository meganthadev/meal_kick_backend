MealKick! README

Welcome to MealKick! A meal planning app where users can add and share their own recipes for meal planning, as well as comment on other's recipes, in a simple-to-use interface which makes meal planning... a real kick!

Installation Instructions:

git clone git@github.com:meganthadev/meal_kick.git
Run bundle install --full-index (installs all gems/dependencies)
Run git remote set-url origin git@github.com:meganthadev/meal_kick.git , then run eval $(ssh-agent) then ssh-add ~/.ssh/id_rsa then enter ssh passphrase just once before any git commits

Frontend (Javascript) SSH Clone: git@github.com:meganthadev/meal_kick_js.git
Run rails s to start server and view application in browser
Rails version - 'rails', '~> 6.0.3'

Use gem 'rack-cors', for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
