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
<% for my $kakiko (@{$kakikomi}){ %>
    <%= ${$kakiko}{name} %>
    <%= ${$kakiko}{email} %>
    <%= ${$kakiko}{entry} %><br>
<% } %>
</p>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
