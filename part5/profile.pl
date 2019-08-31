#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

get '/profile' => sub {             # get関数の最初の引数が
  my $c = shift;                    # /profile となっている
  $c->stash( name => 'lary' );
  $c->stash( hobby => 'study' );
  $c->stash( lang => 'Perl' );
  $c->render(template => 'profile');# ここを index から profile に変更する
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>

@@ profile.html.ep
% layout 'default';
% title 'ぷろふぃーる';
<h1>プロフィール</h1>
<p>私の名前は<%= $name %>です</p>
<p>趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $lang %>です</p>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
