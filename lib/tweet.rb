class Tweet < ActiveRecord::Base
  def content
    @content ||= JSON.parse(content_json, symbolize_names: true)
  end
end
