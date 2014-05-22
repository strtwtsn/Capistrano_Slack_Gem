Capistrano_Slack_Gem
====================

To use the gem you need to

Require the gem in deploy.rb
Create a config/secrets.yml file that contains the credentials for slack

Set the following:

set :slack_room 
set :slack_token

Everything else should be picked up from the gem


Then do cap deploy as normal
