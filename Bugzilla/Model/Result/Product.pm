package Bugzilla::Model::Result::Product;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table(Bugzilla::Product->DB_TABLE);
column(Bugzilla::Product->DB_COLUMN_NAMES);
primary_key(Bugzilla::Product->ID_FIELD);

has_many('components', 'Bugzilla::Model::Result::Component', 'product_id');

1;
