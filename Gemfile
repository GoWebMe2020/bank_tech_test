source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'simplecov', require: false, group: :test

group :test do
  gem 'simplecov', require: false, group: :test
end

group :test, :development do
  gem 'rspec-rails', '~> 5.0.0'
end
