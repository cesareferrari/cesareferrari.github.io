# Generate a new Rails 5 application

This article describes how to generate a new Rails 5 application.

### Install new versions of Ruby and Rails if needed

List the available versions of Ruby with `rbenv versions`. The current version has an asterisk:

```sh
rbenv versions
  system
  2.0.0-p247
  2.3.1
* 2.3.3 (set by /Users/estelle/Sites/.ruby-version)
```

Set a different current version with rbenv local:

```sh
rbenv local 2.3.1
```

List all available Ruby versions to install with rbenv install -l

```sh
rbenv install -l
Available versions:
  1.8.5-p52
  1.8.5-p113
  1.8.5-p114
  1.8.5-p115
  1.8.5-p231
  ...
  ...
```

Install a particular version with` rbenv install [version]`

```sh
rbenv install 2.4.3
```

Install bundler (make sure you have the targeted version of Ruby)

```sh
rbenv local  #output current version of Ruby
2.4.3

gem install bundler
```

Install Rails (optionally specifying a version)

```sh
gem install rails -v 5.1.4
```

### Create new app

```sh
rails _5.1.4_ new flix -T -d postgresql  # skip test framework, use postgresql
```

It’s also possible to generate a new Rails app inside an existing directory. In this case, create the directory, cd into it and issue the following command:

```sh
rails new . -T -d postgresql
```

### Install Rspec

```ruby
# Gemfile

group :test, :development do
  gem "rspec-rails", "3.5.0.beta3"
end

group :test do
  gem "capybara", "2.7.1"
end
```

```sh
bundle install
```

```sh
rails generate rspec:install
```

If you get an error about not being able to find the rspec:install generator, it may be because you have another copy of the Rails environment running in the background. To clear things up, you may need to run this command:

```sh
spring stop
```

Then re-run the generator:

```sh
rails generate rspec:install
```

Run the rspec command to make sure it works

```sh
rspec
```

### Create databases

```sh
rails db:create
rails db:migrate  # creates schema.rb for testing
```

### Initialize Git repository

Repository may already be initialized, see if there is a `.git` folder already before initializing again.

```sh
git init
```

Add .DS\_Store to .gitignore

```sh
# .gitignore

.DS_Store
```

Add initial commit

```sh
git add .
git commit -m "Initial commit"
```
