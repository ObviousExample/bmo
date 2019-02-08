package Bugzilla::Model::Result::Group;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::Group->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::Group->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::Group->ID_FIELD);

1;
