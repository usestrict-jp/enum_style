
## Installing

Add this line to your application's Gemfile:

```ruby
gem 'enum_style'
```

And then execute:
```bash
$ bundle
```

```
rails g enum_style:install
```

```
config/enum_style.yml
```

You can now edit them to adjust to your needs.

## Usage

In model file:

```ruby
class Article < ApplicationRecord

  #----------------------------------------
  #  ** Enums **
  #----------------------------------------
  enum publish: { draft: 0, preview: 10, published: 20 }

end
```

You can call:

```ruby
article = Article.first
article.published!

article.publish
# -> published

article.publish_style
# -> primary
```

```ruby
<%= tag.p(class: "btn-#{article.publish_style}") { 'content' } %>
# -> "<p class='btn-primary'>content</p>"
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
