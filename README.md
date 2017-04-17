# Omniauth::Niconico

Niconico OAuth2 Strategy for OmniAuth

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-niconico'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-niconico

## Usage

### Setup

[OmniAuth Only](https://github.com/intridea/omniauth)
or
[Devise + OmniAuth](https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview)

### User Info

```ruby
{
   id: '25252525',
   name: 'niconico user',
   image: 'http://example.com/user_icon_of_25252525.png',
   small_image: 'http://example.com/user_thumbnail_of_25252525.png'
}
```

## Contributing

1. Fork it ( https://github.com/dwango/omniauth-niconico/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
