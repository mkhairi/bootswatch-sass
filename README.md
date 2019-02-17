# Bootswatch ruby gem [![Gem Version](https://badge.fury.io/rb/bootswatch.svg)](http://badge.fury.io/rb/bootswatch)

[Bootswatch](http://bootswatch.com) is a collection of free themes for [Bootstrap](v4-alpha.getbootstrap.com). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap'
gem 'bootswatch'
```

Bootstrap JavaScript depends on jQuery. If you're using Rails 5.1+, add the jquery-rails gem to your Gemfile:
```ruby
gem 'jquery-rails'
```

And then execute:

    $ bundle

## Usage
### Stylesheets
in your ```application.scss```
```scss
// example override bootswatch variables
$primary:       #FFCF06;
$secondary:     #37474f;
$success:       #28b62c;
$info:          #03a9f4;
$warning:       #fbe42c;
$danger:        #ff4136;
$light:         #eeeeee;
$dark:          #444444;
// end example override

// import scss file
@import "bootswatch/materia/variables";
@import "bootstrap";
@import "bootswatch/materia/bootswatch";
```

Make sure the file has .scss extension (or .sass for Sass syntax). If you have just generated a new Rails app, it may come with a .css file instead. If this file exists, it will be served instead of Sass, so rename it:


### Javascript
Add Bootstrap dependencies and Bootstrap to your ```application.js```:
```js
//= require jquery3
//= require popper
//= require bootstrap
```
or  use individual Bootstrap components for ease of debugging
```js
//= require jquery3
//= require popper
//= require bootstrap-sprockets
```
see more on bootstrap [readme](https://github.com/twbs/bootstrap-rubygem)

## Contributing

1. Fork it ( https://github.com/mkhairi/bootswatch/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
