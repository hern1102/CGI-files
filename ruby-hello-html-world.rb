#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

puts cgi.header
# puts "HTTP/1.0 200 OK"
# puts "Content-type: text/html\n\n"
puts "<html><body>This is a test</body></html>"