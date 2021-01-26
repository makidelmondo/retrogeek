source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.0'
  # Rspecの記入位置はここ
  # rails g rspec:installコマンドでインストール
  # .rspecファイルに --format documentationを記入してRspec準備完了
  # rails g rspec:model xxxx コマンドで作業するモデルは作成する
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise'
# rails g devise userの様にDevise関連のモデルはModelではなくDeviseと入力して作成する。
gem 'pry-rails'
# Rspecの記入位置はDevelopment, :test doの範囲内
gem 'mini_magick'
# ImageMagickの機能をRubyで使える様にするGem。もう一つImageProcessingを追加することで画像サイズの変更もできる様になる。
# MiniMagickのインストールは次の順で行う。1.brew install imagemagick 2. gem 'mini_magick'追記 3.bundle install
gem 'image_processing', '~> 1.2'
# MiniMagickインストール後にgem 'image_processing', '~> 1.2'を追記してBundle install
gem 'active_hash'
# データをモデルファイル内に直接記述することで、データベースへ保存せずにデータを取り扱うことができる 'active_hash' 追記後にBundle install
# 作成するプルダウンの数だけRails g model xxxx --skip-migrationコマンドでモデルを作る。Integer型になる。
gem 'payjp'
# bundle installするだけ

