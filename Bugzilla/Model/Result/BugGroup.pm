package Bugzilla::Model::Result::BugGroup;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table('bug_group_map');
column('bug_id', 'group_id');
primary_key('bug_id', 'group_id');

belongs_to(bug => 'Bugzilla::Model::Result::Bug', 'bug_id');
belongs_to(group => 'Bugzilla::Model::Result::Group', 'group_id');


1;
