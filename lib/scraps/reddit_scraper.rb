class Scraps::RedditScraper
  attr_accessor :page

  URL = "https://www.reddit.com"
  USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"

  def initialize
    @page = Nokogiri::HTML(open(URL, "User-Agent" => USER_AGENT))
  end

  def print_headlines
    self.page.css("a.title").each do |headline_link|
      puts headline_link.text.strip
    end
  end

  def print_subreddits
    self.page.css("div.sr-list span + ul a").each do |subreddit_link|
      puts subreddit_link.text.strip
    end
  end
end
