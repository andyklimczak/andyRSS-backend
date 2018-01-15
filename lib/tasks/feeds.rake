namespace :feeds do
  desc "TODO"
  task update: :environment do
    Feed.all.each do |feed|
      xml = feed.feed_xml
      xml.entries.each do |entry|
        p entry
        Item.find_or_create_by!(title: entry.title, url: entry.url, feed: feed, published_at: entry.published)
      end
    end
  end
end
