source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem "decent_exposure", "~> 3.0"

gem 'pg', '~> 0.9'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'

#audit trail
gem "paper_trail", "~> 6.0"
gem "paper_trail-globalid", "~> 0.2.0"


# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

#forms
gem "simple_form", "~> 3.2.1"
gem "wicked", "~> 1.3"
gem 'reform', "~> 2.2.1"
gem "reform-rails", "~> 0.1.5"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem "rspec", "~> 3.5"
  gem "guard-rspec", "~> 4.7"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end


group :test do
  gem "capybara", "~> 2.12"
  gem "capybara-webkit", "~> 1.12"
  gem "capybara-screenshot", "~> 1.0.14", require: false
  # gem "capybara_objects", "~> 0.1.1"
  gem "database_cleaner", "~> 1.5.3"
  gem "webmock", "~> 2.3.2"
  gem "selenium-webdriver", "~> 3.2"
  gem "chromedriver-helper", ">= 0.0.8"
  gem "factory_girl_rails", "~> 4.8.0"
  gem "factory_girl", "~> 4.8.0"
  gem "rspec-collection_matchers", "~> 1.1.3"
  gem "poltergeist", "~> 1.13"
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
