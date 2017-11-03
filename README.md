# Bootswatch ruby gem [![Gem Version](https://badge.fury.io/rb/bootswatch.svg)](http://badge.fury.io/rb/bootswatch)

[Bootswatch](http://bootswatch.com/4-alpha/) is a collection of free themes for [Bootstrap](v4-alpha.getbootstrap.com). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap'
gem 'bootswatch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootswatch

## Usage

in your application.css.scss
```scss
// example override bootswatch variables
$primary:       #FFCF06;
$secondary:     #37474f;
$success:       #28b62c;
$info:          #03a9f4;
$warning:       #fbe42c;
$danger:        #ff4136;
$light:         #eeeeee;
$dark:          #444444;;
// end example override

// import scss file
@import "bootswatch/materia/variables";
@import "bootstrap";
@import "bootswatch/materia/bootswatch";
```

## Contributing

1. Fork it ( https://github.com/mkhairi/bootswatch/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
