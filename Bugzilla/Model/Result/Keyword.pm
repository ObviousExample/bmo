package Bugzilla::Model::Result::Keyword;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::Keyword->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::Keyword->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::Keyword->ID_FIELD);

1;
