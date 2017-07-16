<h2>Step.3 formを使ってデータのやり取りを使用</h2>

<h3>getとpost</h3>

getとは... -> 普通にデータを送るもの  
postとは... -> formなどのデータをURLパラメーターで隠して送信する  
[http://write-remember.com/archives/2530/](http://write-remember.com/archives/2530/)

<h3>postで送ったデータ</h3>

postで送ったデータは params で中身を見ることができます.

- views/index.erb

```
<%= @name %> さん
<form action="/posted" method="POST">
  <input type='text' name='name'></input>
  <button class='waves-effect waves-light btn-large red' type='submit' name='action' value='send'>決定</button>
</form>
```

post先のアクション

- app.rb

```
post '/posted' do
  @name = params[:name]
  erb :index
end
```