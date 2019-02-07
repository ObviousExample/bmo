package Bugzilla::Model::Result::Component;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table(Bugzilla::Component->DB_TABLE);
column(Bugzilla::Component->DB_COLUMN_NAMES);
primary_key(Bugzilla::Component->ID_FIELD);

belongs_to(product => 'Bugzilla::Model::Result::Product', 'product_id');

1;
