# Qa

Refinery Qa

### Gem Installation using Bundler

Include the latest [gem](http://rubygems.org/gems/refinerycms-qa) into your Refinery CMS application's Gemfile:

    gem 'refinerycms-qa', '~> 2.0.0'

Then type the following at command line inside your Refinery CMS application's root directory:

    bundle install

#### Installation on Refinery 2.0.0 or above.

To install the migrations, run:

    rails generate refinery:qa
    rake db:migrate
