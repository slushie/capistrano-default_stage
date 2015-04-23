# Capistrano::DefaultStage

Set a default stage for your Capistrano 3 tasks!

	set :default_stage, :production

The `default_stage` you specify will be used whenever a stage is not set 
on the command line.

## Installation

Add these lines to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0'
gem 'capistrano-default_stage', '~> 0.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-default_stage

## Usage

You must edit your `Capfile` to include the following lines after requiring Capistrano:

```ruby
require 'capistrano/default_stage'
set :default_stage, :production
```

Of course, you aren't limited to the `production` stage. Any existing stage
can be used, even nested stages defined via `capistrano/multiconfig`!

Please note, however, that due to Capistrano's stage architecture, you must define
your default stage inside of your `Capfile`, and *not* in `deploy.rb`.


## Contributing

1. Fork it ( https://github.com/slushie/capistrano-default_stage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
