class Feed < ApplicationRecord
  has_many :items, dependent: :destroy

  validate :valid_feed

  before_save :set_title

  def valid_feed
    errors.add(:feed, "Invalid feed url") if feed_title.blank?
  end

  def set_title
    self.title = feed_title
  end

  def feed_title
    feed_xml.title
  rescue Exception
    ''
  end

  def feed_xml
    Feedjira::Feed.parse(rss)
  end

  def rss
    HTTP.timeout(:per_operation, write: 5, connect: 5, read: 5)
        .get(url)
        .to_s
  end
end
