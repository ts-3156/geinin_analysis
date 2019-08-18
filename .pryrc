require "dotenv"
Dotenv.load

require "erb"
require "active_record"
require "./lib/credential.rb"
require "./lib/user.rb"
require "./lib/following.rb"
require "./lib/tweet.rb"

db_config = YAML.load(ERB.new(File.read("database.yml")).result)
ActiveRecord::Base.establish_connection(db_config["dev"])

require 'twitter_friendly'

client = Credential.first.api_client

geinin_names = File.read('geinin_names.txt').split("\n")
