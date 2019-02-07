package Bugzilla::Model::Result::BugKeyword;
use Mojo::Base -strict;
use DBIx::Class::Candy;

table('keywords');
column('bug_id', 'keywordid');
primary_key('bug_id', 'keywordid');

belongs_to(bug     => 'Bugzilla::Model::Result::Bug',     'bug_id');
belongs_to(keyword => 'Bugzilla::Model::Result::Keyword', 'keywordid');

1;
