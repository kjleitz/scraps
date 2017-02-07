class Scraps::WikipediaScraper
  attr_accessor :page

  URL = "https://www.wikipedia.org"
  # You don't need any particular user agent string to scrape Wikipedia.
  # USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"

  def initialize
    @page = Nokogiri::HTML(open(URL))
  end

  def print_h1
    puts self.page.css("h1").first.text.strip
  end

  def print_links
    self.page.css("a").each do |link|
      puts link.text.strip
    end
  end
end
