# useless_string

Its a simple gem that removes useless characters from two strings and then compare them to see if they
are both the same or not.

## Installation

```ruby
gem 'useless_string'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install useless_string

## Usage

Just require the useless_string `require 'useless_string'` and all th appropriate methods will be available
in `string` class.

```console
$ require 'useless_string'
=> true
$ first = "Sum of 2 + 2 is 4"
=> "Sum of 2 + 2 is 4"
$ second = "2 + 2 = 4"
=> "2 + 2 = 4"
$ first.eql_with_only?(second, numbers: true)
=> true
```

There is also a method `eql_without?` which will take a string and an options hash. You can use
 `eql_*` or `cmp_*`. For now `*_without` accept these options
 
```ruby
:carriage_return
:line_feed
:end_of_line
:spaces
:numbers
:special_characters
```
and `*_with_only` accept only

```ruby
:numbers
:alphabets
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/azam-noob/useless_string. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
