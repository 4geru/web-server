<h2>Step.2 htmlタグを表示しよう</h2>

```
$ mkdir views
$ subl3 views/index.erb
```

- views/index.erb

``` views/index.erb
<html>
<head>
  <title>2017/07/16 RIL 勉強会</title>
</head>
<body>

</body>
</html>
```

<h3>変数を表示させたい</h3>

- app.rb

```
require 'sinatra'

get '/' do 
  @message = 'hello world'
  erb :index
end
```

- views/index.erb

```
<html>
<head>
  <title>2017/07/16 RIL 勉強会</title>
</head>
<body>
<%= @message %><br />
</body>
</html>
```

<h3>Q. なぜ変数の前に @をつけるか</h3>
A. インスタンス変数を利用するため  
[http://qiita.com/kansiho/items/f5ab9b6eeb990e6af327](http://qiita.com/kansiho/items/f5ab9b6eeb990e6af327)
<h3>Q. なぜ <%= %> の中だけ表示できるの</h3>
A. erbファイルだから, 他にも様々な記法があります.  
[http://ruby-rails.hatenadiary.com/entry/20141001/1412169453](http://ruby-rails.hatenadiary.com/entry/20141001/1412169453)