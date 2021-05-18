source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.1'

gem 'bootstrap-sass', '>= 3.4.1'
gem 'coffee-rails', '~> 4.2'
gem 'figaro'
gem 'high_voltage'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mysql2','>= 0.3.18', '< 0.5.0'
gem 'puma', '~> 4.3'
gem 'rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'twitter-bootstrap-rails'
gem 'uglifier', '>= 1.3.0'

# Omniauth
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-tumblr'
gem 'omniauth-twitter'

# Social Networks libaries
gem 'twitter'

gem 'brakeman'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
group :development do
  gem 'better_errors'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_layout'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem "factory_bot_rails"
  gem 'faker'
  gem 'rb-readline'
  gem 'pry'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end
group :test do
  gem 'database_cleaner'
  gem 'launchy'
end
