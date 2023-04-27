require 'cgi'
require 'cgi/session'

# Create a new CGI object
cgi = CGI.new

# Get the session ID from the cookie or create a new session
session_id = CGI::Session.generate_unique_id

# Set the session ID as a cookie
cookie = CGI::Cookie.new('username' => 'session_id', 'value' => session_id)
cgi.out('cookie' => [cookie])

# Create a new session and store data in it
session = CGI::Session.new(cgi, 'session_id' => session_id)
session['username'] = cgi.params('username')[0]
# session.close

puts "<html>";
puts "<head>";
puts "<title>Ruby Sessions</title>";
puts "</head>";
puts "<body>";

puts "<h1>Ruby Sessions Page 1</h1>";

name = session['username']

if name 
	puts "<p><b>Name:</b> #{name}"
else
	puts "<p><b>Name:</b> You do not have a name set</p>";
end


puts "<br/><br/>";
puts "<a href=\"/cgi-bin/perl-sessions-2.pl\">Session Page 2</a><br/>";
puts "<a href=\"/perl-cgiform.html\">Perl CGI Form</a><br />";
puts "<form style=\"margin-top:30px\" action=\"/cgi-bin/perl-destroy-session.pl\" method=\"get\">";
puts "<button type=\"submit\">Destroy Session</button>";
puts "</form>";

puts "</body>";
puts "</html>";