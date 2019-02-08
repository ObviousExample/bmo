package Bugzilla::Model::Result::Product;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::Product->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::Product->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::Product->ID_FIELD);

__PACKAGE__->has_many('components', 'Bugzilla::Model::Result::Component', 'product_id');

1;
