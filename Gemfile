source 'https://rubygems.org'

ruby '1.9.3'

gem 'airbrake'
gem 'boilerpipe', '~> 0.0.4'
gem 'bourbon'
gem 'clearance'
gem 'coffee-rails'
gem 'delayed_job_active_record', '>= 4.0.0.beta2'
gem 'email_validator'
gem 'flutie'
gem 'haml'
gem 'haml-rails'
gem 'high_voltage'
gem 'jquery-rails'
gem 'neat'
gem 'pismo'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '>= 4.0.0'
gem 'rails-bookmarklet', :git => 'https://github.com/oliverfriedmann/rails-bookmarklet.git'
gem 'recipient_interceptor'
gem 'sass-rails'
gem 'simple_form'
gem 'uglifier'
gem 'unicorn'

group :development do
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 2.14'
end

group :test do
  gem 'capybara-webkit', '>= 0.14.1'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.5.7'
  gem 'rails_12factor'
end
