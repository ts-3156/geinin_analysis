require "dotenv"
Dotenv.load

require "active_record"
require "./lib/credential.rb"
require "./lib/user.rb"
require "./lib/following.rb"
require "./lib/tweet.rb"

db_config = YAML.load_file("database.yml")
ActiveRecord::Base.establish_connection(db_config["dev"])

require 'twitter_friendly'

client = Credential.first.api_client
