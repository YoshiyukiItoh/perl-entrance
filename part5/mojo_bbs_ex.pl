#!/usr/bin/env perl
use Mojolicious::Lite;

my @entries = ();

get '/' => sub {
  my $c = shift;
  my $entry = $c->param('body');
  my $name = $c->param('name');
  my $email = $c->param('email');
  my %tmphash = (
    name => $name,
    email => $email,
    entry => $entry
  );
  if ( $email eq "age" ) {
    unshift @entries , \%tmphash;
  } else {
    push @entries , \%tmphash;
  }
  $c->stash(kakikomi => \@entries);
  $c->render(template => 'index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'BBS';
<h1>掲示板です</h1>
<form action="/" method="get">
    text:<input name="body" type="text"><br/>
    name:<input name="name" type="text"><br/>
    email:<input name="email" type="text"><br/>
    <input type="submit" value="投稿する">
</form>

<p>
<table border="1">
  <tr>
    <th>Name</th>
    <th>email</th>
    <th>entry</th>
  </tr>

  <% for my $kakiko (@{$kakikomi}){ %>
  <tr>
    <th><%= ${$kakiko}{name} %></th>
    <th><%= ${$kakiko}{email} %></th>
    <th><%= ${$kakiko}{entry} %></th>
  </tr>
  <% } %>
</table>
</p>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head>
    <title><%= title %></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  </head>
  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<!-- navbar-inverse で黒系ナビゲーションの指定をしています。-->
<!-- navbar-fixed-top でヘッダー固定の指定をしています。-->
<div class="container">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
<!--button~はウインドウのサイズが780px以下になった時に表示されます。-->
<a class="navbar-brand" href="#">Bootstrap</a>
<!--こちらにサイト名を入れます。-->
</div>
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<li class="active"><a href="#home">ホーム</a></li>
<li><a href="#tab">タブ</a></li>
<li><a href="#accordion">アコーディオン</a></li>
<li><a href="#popover">ポップオーバー</a></li>
</ul>
</div>
<!--/.nav-collapse -->
</div>
</div>
    <%= content %>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
