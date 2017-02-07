# Scraps

Scraps is a small application, built to test out scraping web pages with Nokogiri (and to test spoofing your User Agent so you can still access sites which sniff it).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scraps'
```

And then execute:

    $ bundle


## Usage

Run `./bin/console` for an interactive prompt. Test out the three different scrapers by using the already-set-up objects `u` (a `UserAgentScraper` object), `w` (a `WikipediaScraper` object), and `r` (a `RedditScraper` object). You can try out the following five methods:

```
u.get_user_agent
w.print_h1
w.print_links
r.print_headlines
r.print_subreddits
```

## Development

After checking out the repo, run `bundle install` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kjleitz/scraps. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
