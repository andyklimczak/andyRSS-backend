class Feed < ApplicationRecord
  has_many :items

  def feed_xml
    rss = HTTP.get(url).to_s
    Feedjira::Feed.parse(rss)
  end
end
