require "open-uri"
require "bundler/setup"
Bundler.require(:default)

require_relative "../lib/scraps/version"
require_relative "../lib/scraps/reddit_scraper"
require_relative "../lib/scraps/user_agent_scraper"
require_relative "../lib/scraps/wikipedia_scraper"
