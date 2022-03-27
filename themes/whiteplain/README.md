# Whiteplain

[![CircleCI](https://circleci.com/gh/taikii/whiteplain.svg?style=shield)](https://circleci.com/gh/taikii/whiteplain)

This is simple and functional [Hugo](https://gohugo.io/) theme.

![](images/tn.png)

## Installation

```
$ git clone https://github.com/taikii/whiteplain.git themes/whiteplain
```
Or
```
$ git submodule add https://github.com/taikii/whiteplain.git themes/whiteplain
```

## More colors

This theme automatically switches between light and dark styles depending on the OS color scheme. You can fix the light or dark style by adding the following theme.

* [Dark](https://github.com/taikii/whiteplain-dark) Fix in dark style.
* [Light](https://github.com/taikii/whiteplain-light) Fix in light style.

## Usage

### Configration

```toml
baseurl = "https://example.com/"
title = "Whiteplain"
theme = "whiteplain"
languageCode = "en"
# Disqus shortname
disqusShortname = "Shortname"
# google analytics tracking id
googleAnalytics = "Toracking ID"

# Copyright notice. This is displayer in the footer.
copyright = "&copy; Copyright 2017 Your name"

[params]
  # whether to use CDN or local file for fontawesome
  #useCDN = false
  # whether to include external sharing scripts and icons for twitter, facebook and co.
  #showShareIcons = false
  # Date format
  #dateFormat = "January 2, 2006"

# This is displayer in About page.
[params.author]
  name = "Your name"
  # Gravatar or Abatar image
  gravatar = "Gravatar email or MD5 Hash"
  #avatar = "/path/to/avatar"

  twitter = "Twitter username"
  facebook = "Facebook username"
  googleplus = "Googleplus username"
  instagram = "Instagram username"
  tumblr = "Tumblr username"
  flickr = "Flickr username"
  reddit = "Reddit username"
  linkedin = "Linkedin username"
  slideshare = "Slideshare username"
  github = "Github username"
  gitlab = "Gitlab username"
  bitbucket = "Bitbucket username"
  stackoverflow = "Stackoverflow username"
  jsfiddle = "Jsfiddle username"
  codepen = "Codepen username"
  deviantart = "Deviantart username"
  behance = "Behance username"
  dribbble = "Dribbble username"
  wordpress = "Wordpress username"
  medium = "Medium username"
  foursquare = "Foursquare username"
  xing = "Xing username"
  quora = "Quora username"
  youtube = "Youtube username"
  vimeo = "Vimeo username"
  whatsapp = "Whatsapp username"
  skype = "Skype username"
  snapchat = "Snapchat username"
  pinterest = "Pinterest username"
  telegram = "Telegram username"
  vine = "Vine username"
  email = "Your email"

[taxonomies]
  category = "categories"
  tag = "tags"
  series = "series"

# Header Menu
[[menu.main]]
  name = "Categories"
  identifier = "categories"
  url = "/categories/"
  weight = 1
[[menu.main]]
  name = "Tags"
  identifier = "tags"
  url = "/tags/"
  weight = 2
[[menu.main]]
  name = "Archives"
  identifier = "archives"
  url = "/archives/"
  weight = 3
[[menu.main]]
  name = "About"
  identifier = "about"
  url = "/about/"
  weight = 4

# Footer Menu
[[menu.footer]]
  name = "About"
  weight = 1
  identifier = "about"
  url = "/about/"
```

### Archives page
The Archive page will be displayed, if you create `content/archives/_index.html`.
The file can be 0 bytes.
```
Hugo site direcctory
└── content
    └── archives
        └── _index.md
```

### About page
The author information is displayed on the About page. You should create an About page in `content/about/_index.md`.
```
Your site direcctory
└── content
    └── about
        └── _index.md
```

### Customize Stylesheet and Javascript
You can customize Stylesheet and Javascript. When you create `static/css/custom.css` `static/js/custom.js`, it will be loaded automatically.

Default Syntax highlighter style is `monokai`. If you want to change the style, create `static/css/syntax.css`. See [Hugo Syntax Highlighting](https://gohugo.io/content-management/syntax-highlighting/) about Syntax highlighting.
```
Your site direcctory
└── static
    ├── css
    │   ├── custom.css
    │   └── syntax.css
    └── js
        └── custom.js
```

If you want to use libraries and frameworks, create `layouts/partials/head_custom.html`. Its contents are read into `<head>...</head>`.
```
Your site direcctory
├── layouts
     └── partials
         └── head_custom.html
```

### Customize Share Buttons
1. Copy `themes/whiteplain/layouts/partials/share.html` to `layouts/partials/share.html`.
2. Customize `layouts/partials/share.html`.
```
Your site direcctory
├── layouts
│   └── partials
│       └── share.html
└── themes
    └── whiteplain
        └── layouts
            └── partials
                └── share.html
```

### Customize Author SNS Icons
1. Copy `themes/whiteplain/layouts/partials/social.html` to `layouts/partials/social.html`.
2. Customize `layouts/partials/social.html`.
```
Your site direcctory
├── layouts
│   └── partials
│       └── social.html
└── themes
    └── whiteplain
        └── layouts
            └── partials
                └── social.html
```

## Icons
This theme using [Font Awesome](https://fontawesome.com/).

## License
[MIT](LICENSE)
