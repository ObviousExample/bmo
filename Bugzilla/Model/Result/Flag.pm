package Bugzilla::Model::Result::Flag;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table(Bugzilla::Flag->DB_TABLE);
__PACKAGE__->add_columns(Bugzilla::Flag->DB_COLUMN_NAMES);
__PACKAGE__->set_primary_key(Bugzilla::Flag->ID_FIELD);

__PACKAGE__->belongs_to(bug => 'Bugzilla::Model::Result::Bug', 'bug_id');
__PACKAGE__->belongs_to(type => 'Bugzilla::Model::Result::FlagType', 'type_id');
__PACKAGE__->has_one(
  setter => 'Bugzilla::Model::Result::User',
  {'foreign.userid' => 'self.setter_id'}
);

__PACKAGE__->might_have(
  requestee => 'Bugzilla::Model::Result::User',
  {'foreign.userid' => 'self.requestee_id'}
);


1;
