#!perl -w
use strict;
use Test::More tests => 2;

use Sub::Name;

use B::Deparse;

my $source = eval{
	B::Deparse->new->coderef2text(subname foo => sub{ @_ });
};

is $@, '';

like $source, qr/\@\_/;
