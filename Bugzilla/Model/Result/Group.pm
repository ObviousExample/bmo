package Bugzilla::Model::Result::Group;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table(Bugzilla::Group->DB_TABLE);
column(Bugzilla::Group->DB_COLUMN_NAMES);
primary_key(Bugzilla::Group->ID_FIELD);

1;
