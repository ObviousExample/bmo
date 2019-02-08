package Bugzilla::Model::Result::BugKeyword;
use Mojo::Base 'DBIx::Class::Core';

__PACKAGE__->table('keywords');
__PACKAGE__->add_columns('bug_id', 'keywordid');
__PACKAGE__->set_primary_key('bug_id', 'keywordid');

__PACKAGE__->belongs_to(bug     => 'Bugzilla::Model::Result::Bug',     'bug_id');
__PACKAGE__->belongs_to(keyword => 'Bugzilla::Model::Result::Keyword', 'keywordid');

1;
