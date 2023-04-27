#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

puts "Cache-Control: no-cache\n";
puts "Content-type: text/html \n\n";

# print HTML file top
puts "<!DOCTYPE html>
<html><head><title>Post Request Echo</title>
</head><body><h1 align='center'>Post Request Echo</h1>
<hr>"

q_str = ENV['QUERY_STRING']
params = cgi.params
# http protocol
proto = ENV['SERVER_PROTOCOL']
# http method
meth = ENV['REQUEST_METHOD']
# query string
puts "<b>http protocol:</b> #{proto}<br />\n";
puts "<b>request method:</b> #{meth}<br />\n";
puts "<b>Query String:</b> #{q_str}<br />\n";
# message body
puts "<b>Message body:</b><br />\n";

# # The Query String is simply an environment variable
# puts "<b>Query String:</b> #{q_str}<br />\n";

# # Credit for this code to parse the Query string:
# # https://www.mediacollege.com/internet/perl/query-string.html
params.each do |key, value|
puts "<li>#{key} = #{value[0]}</li><br/>\n";
end

# Print the HTML file bottom
puts "</body></html>";