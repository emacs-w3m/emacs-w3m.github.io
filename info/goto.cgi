#!/usr/bin/perl

use strict;
use CGI::Carp qw/ fatalsToBrowser set_message /;
use CGI::Carp;
use CGI_Lite qw/ url_decode /;
use DB_File;

BEGIN {
    sub handle_errors {
	my $msg = shift;
	printf( <<'__message__', $msg );
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Script Internal Error</title>
</head>
<body>
<h1>Script Internal Error</h1>
<p>
%s</p>
<p>
Please send the bug report to <code>emacs-w3m&#64;namazu.org</code>.
</p>
</body>
</html>
__message__
    }
    &set_message( \&handle_errors );
}

my $cgi  = new CGI_Lite;
my %form = $cgi->parse_form_data;
my $file = $form{file};
my $node = $form{node};

if( $file ){
    $file = &url_decode( $file );
} else {
    if( $ENV{'HTTP_ACCEPT_LANGUAGE'} =~ m/\Aja\b/ ){
	$file = "emacs-w3m-ja";
    } else {
	$file = "emacs-w3m";
    }
}

if( $node ){
    $node = &url_decode( $node );
} else {
    $node = "Top";
}

my $dbfile = $ENV{'SCRIPT_FILENAME'};
$dbfile =~ s![^/]+\Z!node.db!;

my %table;
tie( %table, 'DB_File', $dbfile, O_RDONLY )
    or die "Can't open node index.\n";

if( defined $table{$file,$node} ){
    my $uri = $ENV{'SCRIPT_NAME'};
    $uri =~ s![^/]+\Z!$table{$file,$node}!;
    printf( <<'__redirect__', $uri );
Status: 302 Found Node
Location: %s

__redirect__
} else {
    printf( <<'__unknown__', $file, $node );
Status: 404 Unknown Node
Content-Type: text/plain

Unknown node "(%s)%s" is specified.
__unknown__
}
