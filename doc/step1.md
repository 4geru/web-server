
<h2>Step.1 webサーバーを起動させよう</h2>

```
$ mkdir webserver
$ bundle init 
$ ls
Gemfile
```

[gemとbundle](http://xxxcaqui.hatenablog.com/entry/2013/02/11/013421)

```ruby:Gemfile
# frozen_string_literal: true
source "https://rubygems.org"

# gem "rails"
gem "sinatra"
```

```
$ bundle
Fetching gem metadata from https://rubygems.org/..........
Fetching version metadata from https://rubygems.org/.
...
Installing sinatra 2.0.0
Bundle complete! 1 Gemfile dependency, 6 gems now installed.
Bundled gems are installed into ./vendor/bundle.
```


```ruby:app.rb
require 'sinatra'

get '/' do 
  'hello world'
end
```

webserverを起動

```
$ bundle exec ruby app.rb
[2017-07-16 13:33:54] INFO  WEBrick 1.3.1
[2017-07-16 13:33:54] INFO  ruby 2.4.0 (2016-12-24) [x86_64-darwin16]
== Sinatra (v2.0.0) has taken the stage on 4567 for development with backup from WEBrick
[2017-07-16 13:33:54] INFO  WEBrick::HTTPServer#start: pid=240 port=4567
```

結果が表示されるページ [http://localhost:4567](http://localhost:4567)
bundle exec とは...  
[http://llcc.hatenablog.com/entry/2014/12/15/002452](http://llcc.hatenablog.com/entry/2014/12/15/002452)

<h3>Q. なぜhello worldが返されるか</h3>
A. return 文が隠れているから  
[https://shugo.net/jit/20120229.html](https://shugo.net/jit/20120229.html)

