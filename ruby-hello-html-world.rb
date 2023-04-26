#!/usr/bin/ruby -w

require 'cgi'
cgi = CGI.new

puts "Cache-Control: no-cache\n";
puts "Content-type: text/html\n\n"
puts "<html>";
puts "<head>";
puts "<title>Hello, Perl!</title>";
puts "</head>";
puts "<body>";

puts "<h1>Team 135 was here - Hello, Ruby!</h1>";
puts "<p>This page was generated with the Ruby programming langauge</p>";

date = Time.now

puts "<p>Current Time: #{date.localtime}</p>";

ip_address = cgi.REMOTE_ADDR

puts "<p>Your IP Address: #{ip_address}</p>";

puts "</body>";
puts "</html>";