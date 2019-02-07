package Bugzilla::Model::Result::User;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table(Bugzilla::User->DB_TABLE);
column(Bugzilla::User->DB_COLUMN_NAMES);
primary_key(Bugzilla::User->ID_FIELD);

1;
