source 'https://rubygems.org'

ruby '2.1.2'
gem 'rails', '4.0.6'

# Assets
gem 'less-rails'
gem 'jquery-rails'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

# Bootstrap
gem 'twitter-bootstrap-rails'
gem 'will_paginate-bootstrap'

# Attachments
gem 'dm-paperclip'

# elastic search
gem 'elasticsearch-rails'
gem 'elasticsearch-model'

# General
gem 'mysql'
gem 'simple_form', '~> 3.0.0.rc'
gem 'will_paginate', git: 'https://github.com/mislav/will_paginate.git', branch: :master

# Datamapper
%w{active_model aggregates constraints core do-adapter migrations mysql-adapter rails timestamps transactions validations}.each do |dm_gem|
  gem "dm-#{dm_gem}", :git => "https://github.com/datamapper/dm-#{dm_gem}.git", :branch => 'release-1.2'
end

group :development, :test do
  gem 'awesome_print'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'dm-rspec'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'launchy'
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'restful-matchers'
  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda-matchers'
  gem 'spin', require: false
  gem 'webmock', '1.11.0', require: false
  gem 'yard'
  gem 'simplecov'
  gem 'simplecov-rcov'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
