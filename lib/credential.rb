class Credential < ActiveRecord::Base
  class << self
    def api_client
      id = rand(1..maximum(:id))
      find(id).api_client
    end
  end

  def api_client
    TwitterFriendly::Client.new(
        consumer_key:        ENV["CONSUMER_KEY"],
        consumer_secret:     ENV["CONSUMER_SECRET"],
        access_token:        token,
        access_token_secret: secret,
        expires_in:          86400 # 1day
    )
  end
end
