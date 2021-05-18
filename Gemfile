source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.3'
gem 'bootsnap'
gem 'puma', '~> 5.0'
gem 'mongoid', '~> 7.3.0'

group :development, :test do
  gem 'byebug', platforms: [:mri]
end

group :development do
  gem 'listen', '~> 3.3'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'database_cleaner'
end
