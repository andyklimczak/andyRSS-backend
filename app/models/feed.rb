class Feed < ApplicationRecord
  def feed_xml
    rss = HTTP.get(url).to_s
    Feedjira::Feed.parse(rss)
  end
end
