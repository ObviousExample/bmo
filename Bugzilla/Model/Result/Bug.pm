package Bugzilla::Model::Result::Bug;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table(Bugzilla::Bug->DB_TABLE);
column(Bugzilla::Bug->DB_COLUMN_NAMES);
primary_key(Bugzilla::Bug->ID_FIELD);

has_one(reporter      => 'Bugzilla::Model::Result::User', 'userid');
has_one(assigned_to   => 'Bugzilla::Model::Result::User', 'userid');
might_have(qa_contact => 'Bugzilla::Model::Result::User', 'userid');

has_many(bug_keywords => 'Bugzilla::Model::Result::BugKeyword', 'bug_id');
many_to_many(keywords => 'bug_keywords', 'keyword');

has_many(bug_groups => 'Bugzilla::Model::Result::BugGroup', 'bug_id');
many_to_many(groups => 'bug_groups', 'group');

has_one(
  product => 'Bugzilla::Model::Result::Product',
  {'foreign.id' => 'self.product_id'}
);

has_one(
  component => 'Bugzilla::Model::Result::Component',
  {'foreign.id' => 'self.component_id'}
);


1;
