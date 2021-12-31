# BreakingBad

This is a gem wrapper for the [Breaking Bad](https://www.breakingbadapi.com/) API.

this gem was created to learn how works the gems on ruby.

this gem use ruby threads to make the api response faster and more reliable.

you can easily access the Breaking Bad API by using the following code:

https://gyazo.com/760294872108ec4fe40300874821e5c8


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'breaking_bad'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install breaking_bad

## Usage

Basic Methods for all enpoints:

    $ all
    $ find(id)
    $ random (in this method you can pass a author name to get ramdom quotes from that author).
    
Get all characters:

    $ BreakingBad::Character.find_all
    $ BreakingBad::Character.find_by_category(category)
    $ BreakingBad::Character.find_by_name(name)
    $ BreakingBad::Character.find_with_limit(limit)

Get all Episodes:
    
    $ BreakingBad::Episode.find_all
    $ BreakingBad::Episode.find_by_series(series)

Get all quotes

    $ BreakingBad::Quote.find_all
    $ BreakingBad::Quote.find_by_author(author)
    $ BreakingBad::Quote.find_by_series(series)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/breaking_bad. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/breaking_bad/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BreakingBad project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/breaking_bad/blob/master/CODE_OF_CONDUCT.md).
