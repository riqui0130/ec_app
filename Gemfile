source "https://rubygems.org"

ruby "3.2.0"

gem "rails", "~> 7.0.7"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "sprockets-rails"
gem "cssbundling-rails"
gem "jsbundling-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
# haml
gem 'hamlit-rails', '~> 0.2.3'
gem 'html2haml', require: false
#github omniauth
gem 'omniauth', '~> 2.1', '>= 2.1.2'
gem 'omniauth-github', '~> 2.0', '>= 2.0.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0', '>= 1.0.1'

gem 'sassc', '~> 2.0'
# スキーマ情報
gem 'annotate'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
