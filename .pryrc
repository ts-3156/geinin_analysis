require "active_record"
require "./lib/credential.rb"

db_config = YAML.load_file("database.yml")
ActiveRecord::Base.establish_connection(db_config["dev"])

require 'twitter_friendly'

