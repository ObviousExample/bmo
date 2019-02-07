package Bugzilla::Model;
use 5.10.1;
use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces();
__PACKAGE__->load_components('Helper::Schema::QuoteNames');

1;
