class User < ActiveRecord::Base
  def profile
    @profile ||= JSON.parse(profile_json, symbolize_names: true)
  end
end
