class Scraps::UserAgentScraper

  # This exists purely to test what your UA string looks like.
  # Change the USER_AGENT constant to change the way a website sees the scraper.
  # Remove it to see the way a website sees a Ruby scraper by default.

  attr_accessor :page

  URL = "http://www.whoishostingthis.com/tools/user-agent/"
  USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"

  def initialize
    # @page = Nokogiri::HTML(open(URL))
    @page = Nokogiri::HTML(open(URL, "User-Agent" => USER_AGENT))
  end

  def get_user_agent
    puts self.page.css("div.user-agent").first.text
  end
end
