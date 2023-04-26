#!/usr/bin/ruby

puts "Cache-Control: no-cache\n";
puts "Content-type: text/html \n\n";

# print HTML file top
puts "<!DOCTYPE html>
<html><head><title>Environment Variables</title>
</head><body><h1 align="center">Environment Variables</h1>
<hr>"

ENV.each do |key, value|
    puts "<b>#{key}:</b> #{value}<br/>\n";
  end

# Print the HTML file bottom
puts "</body></html>";