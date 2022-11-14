### Hexlet tests and linter status:
[![Actions Status](https://github.com/keniiig21/rails-project-63/workflows/hexlet-check/badge.svg)](https://github.com/keniiig21/rails-project-63/actions)

# Генератор форм

Отличный генератор форм. Замечательный проект для hexlet!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hexlet_code'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hexlet_code

## Usage

To start using HexletCode you just have to use the helper it provides:

```
<%= Hexlet.form_for @user do |f| %>
  <%= f.input :name %>
  <%= f.input :job, as: :text %>
  <%= f.submit 'Сохранить' %>
<% end %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/keniiig21/rails-project-63.
