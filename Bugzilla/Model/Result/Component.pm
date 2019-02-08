package Bugzilla::Model::Result::Component;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::Component->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::Component->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::Component->ID_FIELD);

__PACKAGE__->belongs_to(product => 'Bugzilla::Model::Result::Product', 'product_id');

1;
