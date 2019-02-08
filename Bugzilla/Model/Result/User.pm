package Bugzilla::Model::Result::User;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::User->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::User->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::User->ID_FIELD);

1;
