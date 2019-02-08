package Bugzilla::Model::Result::BugGroup;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table('bug_group_map');
__PACKAGE__->add_columns('bug_id', 'group_id');
__PACKAGE__->set_primary_key('bug_id', 'group_id');

__PACKAGE__->belongs_to(bug => 'Bugzilla::Model::Result::Bug', 'bug_id');
__PACKAGE__->belongs_to(group => 'Bugzilla::Model::Result::Group', 'group_id');


1;
