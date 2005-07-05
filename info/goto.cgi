#!/usr/bin/perl

use strict;
use CGI::Carp qw/ fatalsToBrowser set_message /;
use CGI_Lite qw/ url_decode /;
use DB_File;
use URI;

=head1 NAME

goto.cgi - �Ρ���̾�˴�Ť� request �� redirect ����

=head1 SYNOPSIS

CGI �Ȥ������Ѥ��롥

=head1 DESCRIPTION

F<texi2html> �ˤ�ä��������줿 HTML �ե�����ȡ�F<makedb> �ˤ�ä���
�����줿 F<node.db> ��Ʊ���ǥ��쥯�ȥ���֤��ơ�CGI �Ȥ��ƻ��Ѥ��롥

    goto.cgi?file=emacs-w3m&node=Introduction

�Ȥ����褦�� request �������ꡤ�ºݤ� Introduction �᤬�ޤޤ�Ƥ���
�ե������ URI ���֤���

C<file> ���ά����ȡ�

    goto.cgi?node=Introduction

Content negotiation �˴�Ť��ơ�C<emacs-w3m> �ޤ��� C<emacs-w3m-ja> ��
��Ŭ�ڤ��������֡�

=cut

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
    my $uri = URI->new_abs( $table{$file,$node}, $ENV{'REQUEST_URI'} );
    $uri->scheme( "http" );
    # $uri->host( $ENV{'SERVER_NAME'} );
    $uri->host( "emacs-w3m.namazu.org" );
    printf( <<'__redirect__', $uri->as_string );
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

=head1 AUTHOR

=over 4

=item TSUCHIYA Masatoshi <tsuchiya@namazu.org>

=back

=head1 COPYRIGHT

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, you can either send email to this
program's maintainer or write to: The Free Software Foundation,
Inc.; 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

Last Update: $Date$

=cut
