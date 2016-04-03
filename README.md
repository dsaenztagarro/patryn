[![Build Status](https://travis-ci.org/dsaenztagarro/patryn.svg?branch=master)](https://travis-ci.org/dsaenztagarro/patryn)
[![Code Climate](https://codeclimate.com/github/dsaenztagarro/patryn/badges/gpa.svg)](https://codeclimate.com/github/dsaenztagarro/patryn)
[![Coverage Status](https://coveralls.io/repos/dsaenztagarro/patryn/badge.svg?branch=master&service=github)](https://coveralls.io/github/dsaenztagarro/patryn?branch=master)
[![Dependency Status](https://gemnasium.com/dsaenztagarro/patryn.svg)](https://gemnasium.com/dsaenztagarro/patryn)
[![Inline docs](http://inch-ci.org/github/dsaenztagarro/patryn.svg?branch=master)](http://inch-ci.org/github/dsaenztagarro/patryn)

# Patryn

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/patryn`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'patryn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install patryn

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/patryn. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Running tests

Running all tests: `rake test`

Running all tests of a file:

```
ruby -Ilib:test test/patryn_test.rb`
rake test TEST=test/patryn_test.rb`
```

Running a test of a file: `rake test TEST=test/patryn_test.rb -n
test_output_to_file`

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

