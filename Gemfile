ruby '2.0.0'

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/].
gem "pg", "~> 0.17.0"

# Static pages
gem "high_voltage", "~> 2.0.0"

# Blog tagging and maybe more
gem "acts-as-taggable-on", "~> 2.4.1"
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

## Customization for this project
group :development, :test do
  gem "launchy", "~> 2.3.0"
  gem "capybara", "~> 2.1.0"
  gem "rb-fsevent", "~> 0.9.3"
  gem "guard", "~> 1.8.3"  
  gem "ruby_gntp", "~> 0.3.4"
  gem "rr", "~> 1.1.2"
  gem 'passenger'
  gem 'guard-minitest'
  gem 'guard-passenger'
  gem 'guard-bundler'
  gem "guard-coffeescript", "~> 1.3.3"
  # gem 'rb-inotify' if RUBY_PLATFORM =~ /linux/i
  # gem 'libnotify' if RUBY_PLATFORM =~ /linux/i
  gem 'minitest-spec-rails'
  gem 'activerecord-nulldb-adapter', :git => "git://github.com/nulldb/nulldb.git"  
  gem "database_cleaner", "~> 1.1.1"
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
