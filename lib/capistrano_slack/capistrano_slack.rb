require 'capistrano/slack/common'

configuration = Capistrano::Configuration.respond_to?(:instance) ?
  Capistrano::Configuration.instance(:must_exist) :
  Capistrano.configuration(:must_exist)

configuration.load do
# Slack Settings
set(:slack_room) 	{unep-wcmc-website}    # This is the name of the room
set(:slack_token)	{secrets["development"]["capistrano_slack"]}
set(:slack_subdomain)  {'wcmc'}
set(:application)     { "#{app_name}" }

deployment_animals = [
   ["Loxodonta deployana", ":elephant:"],
   ["Canis deployus", ":wolf:"],
   ["Panthera capistranis", ":tiger:"],
   ["Bison deployon", ":ox:"],
   ["Ursus capistranus", ":bear:"],
   ["Crotalus rattledeploy", ":snake:"],
   ["Caiman assetocompilatus", ":crocodile:"]

set(:shuttle_deployer) 'deployment_animals.shuffle.first'
set(:slack_username) 'shuffle_deployer[0]'
set(:slack_emoj) 'shuffle_deployer[1]'
end
