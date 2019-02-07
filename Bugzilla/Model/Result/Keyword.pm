package Bugzilla::Model::Result::Keyword;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table(Bugzilla::Keyword->DB_TABLE);
column(Bugzilla::Keyword->DB_COLUMN_NAMES);
primary_key(Bugzilla::Keyword->ID_FIELD);

1;
