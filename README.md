# Bootswatch::Sass

[Bootswatch](http://bootswatch.com) is a collection of free themes for [Bootstrap](http://getbootstrap.com/). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'bootstrap-sass'
gem 'bootswatch-sass', git: 'git://github.com/mkhairi/bootswatch-sass.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootswatch-sass

## Usage

in your application.css.scss
```scss
// example override bootswatch variables
$brand-primary: #FFCF06;
$navbar-inverse-link-color:  #444444;
$state-success-bg: #28b62c;
$state-warning-bg: #fbe42c;
$state-danger-bg: #ff4136;
// end example override
// import scss file
@import "bootswatch/paper/variables";
@import "bootstrap-sprockets";
@import "bootstrap";
@import "bootswatch/paper/bootswatch";
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bootswatch-sass/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
