package Bugzilla::Model::Result::FlagType;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::FlagType->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::FlagType->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::FlagType->ID_FIELD);

__PACKAGE__->has_many(flags => 'Bugzilla::Model::Result::Flag', 'type_id');

1;
